
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx25821_dev {int dummy; } ;


 int Clear_GPIO_Bit (int) ;
 int GPIO_HI_OE ;
 int GPIO_LO_OE ;
 int Set_GPIO_Bit (int) ;
 int cx_read (int) ;
 int cx_write (int,int) ;

void cx25821_set_gpiopin_direction(struct cx25821_dev *dev,
       int pin_number, int pin_logic_value)
{
 int bit = pin_number;
 u32 gpio_oe_reg = GPIO_LO_OE;
 u32 gpio_register = 0;
 u32 value = 0;


 if (pin_number >= 47)
  return;

 if (pin_number > 31) {
  bit = pin_number - 31;
  gpio_oe_reg = GPIO_HI_OE;
 }


 gpio_register = cx_read(gpio_oe_reg);

 if (pin_logic_value == 1)
  value = gpio_register | Set_GPIO_Bit(bit);
 else
  value = gpio_register & Clear_GPIO_Bit(bit);

 cx_write(gpio_oe_reg, value);
}
