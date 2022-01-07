
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int dummy; } ;


 int AR9170_GPIO_REG_PORT_TYPE ;
 int carl9170_led_set_state (struct ar9170*,int ) ;
 int carl9170_write_reg (struct ar9170*,int ,int) ;

int carl9170_led_init(struct ar9170 *ar)
{
 int err;



 err = carl9170_write_reg(ar, AR9170_GPIO_REG_PORT_TYPE, 3);
 if (err)
  goto out;


 err = carl9170_led_set_state(ar, 0);

out:
 return err;
}
