
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;


 int I40E_GLGEN_GPIO_CTL_LED_MODE_MASK ;
 int I40E_GLGEN_GPIO_CTL_LED_MODE_SHIFT ;
 int I40E_GLGEN_GPIO_CTL_MAX_INDEX ;
 int I40E_LED0 ;
 int i40e_led_is_mine (struct i40e_hw*,int) ;

u32 i40e_led_get(struct i40e_hw *hw)
{
 u32 mode = 0;
 int i;




 for (i = I40E_LED0; i <= I40E_GLGEN_GPIO_CTL_MAX_INDEX; i++) {
  u32 gpio_val = i40e_led_is_mine(hw, i);

  if (!gpio_val)
   continue;

  mode = (gpio_val & I40E_GLGEN_GPIO_CTL_LED_MODE_MASK) >>
   I40E_GLGEN_GPIO_CTL_LED_MODE_SHIFT;
  break;
 }

 return mode;
}
