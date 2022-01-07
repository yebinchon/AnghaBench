
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx25821_dev {int dummy; } ;


 int Clear_GPIO_Bit (int) ;
 int GPIO_HI ;
 int GPIO_LO ;
 int Set_GPIO_Bit (int) ;
 int cx25821_set_gpiopin_direction (struct cx25821_dev*,int,int ) ;
 int cx_read (int ) ;
 int cx_write (int ,int ) ;

__attribute__((used)) static void cx25821_set_gpiopin_logicvalue(struct cx25821_dev *dev,
        int pin_number, int pin_logic_value)
{
 int bit = pin_number;
 u32 gpio_reg = GPIO_LO;
 u32 value = 0;


 if (pin_number >= 47)
  return;


 cx25821_set_gpiopin_direction(dev, pin_number, 0);

 if (pin_number > 31) {
  bit = pin_number - 31;
  gpio_reg = GPIO_HI;
 }

 value = cx_read(gpio_reg);

 if (pin_logic_value == 0)
  value &= Clear_GPIO_Bit(bit);
 else
  value |= Set_GPIO_Bit(bit);

 cx_write(gpio_reg, value);
}
