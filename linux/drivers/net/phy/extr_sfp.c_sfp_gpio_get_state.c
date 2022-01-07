
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int * gpio; } ;


 unsigned int BIT (unsigned int) ;
 scalar_t__ GPIOD_IN ;
 unsigned int GPIO_MAX ;
 scalar_t__* gpio_flags ;
 unsigned int gpiod_get_value_cansleep (int ) ;

__attribute__((used)) static unsigned int sfp_gpio_get_state(struct sfp *sfp)
{
 unsigned int i, state, v;

 for (i = state = 0; i < GPIO_MAX; i++) {
  if (gpio_flags[i] != GPIOD_IN || !sfp->gpio[i])
   continue;

  v = gpiod_get_value_cansleep(sfp->gpio[i]);
  if (v)
   state |= BIT(i);
 }

 return state;
}
