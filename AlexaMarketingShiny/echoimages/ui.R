ui <- fluidPage(
  titlePanel("Alexa Reviews"),
  
  sidebarLayout(
      sidebarPanel(
        selectInput("selection", "Choose a rating:",
                    choices = feedback),
        actionButton("update", "Change"),
        hr(),
        sliderInput(inputId = "freq",
                    label = "Choose the minimum frequency of the word",
                    value = 100,min = 10, max =100),
        sliderInput("max",
                    "Maximum Number of Words:",
                    min = 10,  max = 100,  value = 100)
    ),
    
    mainPanel(
      plotOutput("plot")
    )
  )
)
#error in the min freq part: once you slide past the most common word, it just shows all words on the word cloud rather than nothing