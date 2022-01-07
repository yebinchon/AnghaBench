
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar9170 {int dummy; } ;


 int AR9170_GPIO_REG_PORT_DATA ;
 int carl9170_write_reg (struct ar9170*,int ,int const) ;

int carl9170_led_set_state(struct ar9170 *ar, const u32 led_state)
{
 return carl9170_write_reg(ar, AR9170_GPIO_REG_PORT_DATA, led_state);
}
