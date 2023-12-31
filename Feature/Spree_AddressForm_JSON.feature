Feature: Spree Address Form

  Scenario: Successful Spree Login and Reset Address
    Given User has launched Chrome browser
    When User navigates to Spree login page
    And User enters valid username and password in Spree login page
    And User clicks login on Spree login page
    And User deletes all existing addresses on Spree account page
    Then My Account page should display
    
    
  Scenario Outline: Successful Spree Create New Address
  	Given User clicks on Add new address link on Spree account page
  	When User enters address "<label>""<firstname>""<lastname>""<address1>""<address2>""<city>""<state>""<zipcode>""<country>""<phone>" on Spree new address page
  	And User clicks button on Spree new address page
  	Then First address displayed on account page is "<label>""<firstname> <lastname>""<address1> <address2>,""<city>, <st> <zipcode>,""<country>"
  	Examples: address data
	  	| label | firstname | lastname | address1 | address2 | city | state | zipcode | country | phone | success | st |
	  	|   Work| Crystal| Wen| 5555 John Dr| 301| Dallas| Texas| 77479| United States| 7135555555| Y | TX |
	  	
	  	
  Scenario: Spree Create Address Successful Form Open
  	Given User clicks on Add new address link on Spree account page
  
  
  Scenario Outline: Spree Create Address Expected Failures
  	When User enters JSON"<file>" index "<i>" address on Spree new address page
  	And User clicks button on Spree new address page
  	Then If the new JSON"<file>" index "<i>" address is good, show address on Spree account page, otherwise clear form
  	Examples: address data
	  	| file | i |
	  	|.\\TestData\\spreeaddress.json | 0 |
	  	|.\\TestData\\spreeaddress.json | 1 |
	  	|.\\TestData\\spreeaddress.json | 2 |
	  	|.\\TestData\\spreeaddress.json | 3 |
	  	|.\\TestData\\spreeaddress.json | 4 |
	  	|.\\TestData\\spreeaddress.json | 5 |
	  	|.\\TestData\\spreeaddress.json | 6 |
	  	|.\\TestData\\spreeaddress.json | 7 |