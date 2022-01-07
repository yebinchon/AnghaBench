
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {scalar_t__* gpio; } ;


 size_t GPIO_RATE_SELECT ;
 size_t GPIO_TX_DISABLE ;
 unsigned int SFP_F_PRESENT ;
 unsigned int SFP_F_RATE_SELECT ;
 unsigned int SFP_F_TX_DISABLE ;
 int gpiod_direction_input (scalar_t__) ;
 int gpiod_direction_output (scalar_t__,unsigned int) ;

__attribute__((used)) static void sfp_gpio_set_state(struct sfp *sfp, unsigned int state)
{
 if (state & SFP_F_PRESENT) {

  if (sfp->gpio[GPIO_TX_DISABLE])
   gpiod_direction_output(sfp->gpio[GPIO_TX_DISABLE],
            state & SFP_F_TX_DISABLE);
  if (state & SFP_F_RATE_SELECT)
   gpiod_direction_output(sfp->gpio[GPIO_RATE_SELECT],
            state & SFP_F_RATE_SELECT);
 } else {

  if (sfp->gpio[GPIO_TX_DISABLE])
   gpiod_direction_input(sfp->gpio[GPIO_TX_DISABLE]);
  if (state & SFP_F_RATE_SELECT)
   gpiod_direction_input(sfp->gpio[GPIO_RATE_SELECT]);
 }
}
