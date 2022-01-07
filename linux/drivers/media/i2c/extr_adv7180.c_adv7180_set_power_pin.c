
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7180_state {int pwdn_gpio; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void adv7180_set_power_pin(struct adv7180_state *state, bool on)
{
 if (!state->pwdn_gpio)
  return;

 if (on) {
  gpiod_set_value_cansleep(state->pwdn_gpio, 0);
  usleep_range(5000, 10000);
 } else {
  gpiod_set_value_cansleep(state->pwdn_gpio, 1);
 }
}
