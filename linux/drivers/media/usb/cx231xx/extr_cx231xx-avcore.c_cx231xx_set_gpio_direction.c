
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx231xx {int gpio_dir; int gpio_val; } ;


 int EINVAL ;
 int cx231xx_set_gpio_bit (struct cx231xx*,int,int ) ;

int cx231xx_set_gpio_direction(struct cx231xx *dev,
          int pin_number, int pin_value)
{
 int status = 0;
 u32 value = 0;


 if (pin_number >= 32)
  return -EINVAL;


 if (pin_value == 0)
  value = dev->gpio_dir & (~(1 << pin_number));
 else
  value = dev->gpio_dir | (1 << pin_number);

 status = cx231xx_set_gpio_bit(dev, value, dev->gpio_val);


 dev->gpio_dir = value;

 return status;
}
