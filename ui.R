
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(fluidPage(
        titlePanel('Basic widgets'),
        fluidRow(
                column(3, 
                       h3("Buttons"),
                       actionButton('action', label = "Action"),
                       br(),
                       br(),
                       submitButton('Submit')),
                column(3, 
                       h3('Single checkbox'),
                       checkboxInput('checkbox', label = 'Choice A', value = T)),
                column(3, 
                       checkboxGroupInput('checkGroup',
                                          label = h3('Checkbox group'),
                                          choices = list('Choice 1' = 1,
                                                         'Choice 2' = 2,
                                                         'Choice 3' = 3),
                                          selected = 1)),
                column(3, 
                       dateInput('date',
                                 label = h3('Date input'),
                                 value = '2014-01-01'))
        ),
        fluidRow(
                
                column(3, dateRangeInput('dates', label = h3('Date range'))),
                column(3, fileInput('file', label = h3('File input'))),
                column(3, 
                       h3('Help text'),
                       helpText('This is a help text')),
                column(3, numericInput('num', 
                                       label = h3('Numeric input'),
                                       value = 1))
                ),
        fluidRow(
                
                column(3, radioButtons('radio', label = h3('Radio buttons'),
                                       choices = list('Choice 1' = 1, 'Choice 2' = 2, 
                                                      'Choice 3' = 3), selected = 1)),
                column(3, selectInput('select', label = h3('Select box'),
                                      choices = list('Choice 1' = 1, 'Choice 2' = 2, 
                                                     'Choice 3' = 3), selected = 1)),
                column(3,
                       sliderInput('slier1', label = h3('Sliders'), min = 0, max = 100, value = c(25,75))
                       ),
                column(3, 
                       textInput('text', label = h3('Text input'),
                                 value = 'Enter text...'))
                )
))
