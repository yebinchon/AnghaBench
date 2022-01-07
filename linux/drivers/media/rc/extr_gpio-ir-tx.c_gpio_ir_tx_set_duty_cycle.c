
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {struct gpio_ir* priv; } ;
struct gpio_ir {int duty_cycle; } ;



__attribute__((used)) static int gpio_ir_tx_set_duty_cycle(struct rc_dev *dev, u32 duty_cycle)
{
 struct gpio_ir *gpio_ir = dev->priv;

 gpio_ir->duty_cycle = duty_cycle;

 return 0;
}
