
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv76xx_state {scalar_t__ reset_gpio; } ;


 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void adv76xx_reset(struct adv76xx_state *state)
{
 if (state->reset_gpio) {

  gpiod_set_value_cansleep(state->reset_gpio, 0);
  usleep_range(5000, 10000);
  gpiod_set_value_cansleep(state->reset_gpio, 1);


  usleep_range(5000, 10000);
 }
}
