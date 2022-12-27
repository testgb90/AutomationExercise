*** Settings ***
Documentation      Esse é o documento de keywords comuns para todo o framework.

Library            SeleniumLibrary
Library            FakerLibrary    locale=pt_BR

*** Variables ***

${URL}    https://automationexercise.com/

*** Keywords ***

Abrir o browser
    Open Browser    ${URL}    gc

Fechar todos os browsers
    Close All Browsers

Navegar para a página
    [Arguments]    ${url}

    Go To    ${url}

Clicar no elemento
    [Arguments]    ${locator}

    Wait Until Element Is Visible    ${locator}
    Mouse Over    ${locator}
    Click Element    ${locator}

Digitar no elemento
    [Arguments]    ${locator}    ${text}

    Wait Until Element Is Visible    ${locator}
    Input Text    ${locator}    ${text}

Obter texto do elemento
    [Arguments]    ${locator}

    Wait Until Element Is Visible    ${locator}
    ${text}=    Get Text    ${locator}

    [RETURN]    ${text}

Obter value do elemento
    [Arguments]    ${locator}

    Wait Until Element Is Visible    ${locator}
    ${value}=    Get Element Attribute    ${locator}    value

    [RETURN]    ${value} 