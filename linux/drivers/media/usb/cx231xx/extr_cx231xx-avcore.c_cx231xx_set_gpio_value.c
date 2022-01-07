
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct cx231xx {int gpio_dir; int gpio_val; } ;


 int EINVAL ;
 int cx231xx_set_gpio_bit (struct cx231xx*,int,int) ;

int cx231xx_set_gpio_value(struct cx231xx *dev, int pin_number, int pin_value)
{
 int status = 0;
 u32 value = 0;


 if (pin_number >= 32)
  return -EINVAL;


 if ((dev->gpio_dir & (1 << pin_number)) == 0x00) {

  value = dev->gpio_dir | (1 << pin_number);
  dev->gpio_dir = value;
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir,
           dev->gpio_val);
  value = 0;
 }

 if (pin_value == 0)
  value = dev->gpio_val & (~(1 << pin_number));
 else
  value = dev->gpio_val | (1 << pin_number);


 dev->gpio_val = value;


 status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);

 return status;
}
