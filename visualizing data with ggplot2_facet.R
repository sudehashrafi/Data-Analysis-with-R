install.packages('tidyverse')
install.packages('ggplot2')
install.packages('palmerpenguins')

library(tidyverse)
library(ggplot2)
library(palmerpenguins)


ggplot(data = penguins, aes(x= flipper_length_mm, y=body_mass_g)) +
  geom_point(aes(color= species)) + 
  facet_wrap(~species)

ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=color, fill=cut)) +
  facet_wrap(~cut)


ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) + 
  facet_grid(sex~species)
