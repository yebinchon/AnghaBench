
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int tuner_scl_gpio; int tuner_sda_gpio; } ;
struct cx231xx {int gpio_val; int gpio_dir; TYPE_1__ board; } ;


 int cx231xx_get_gpio_bit (struct cx231xx*,int ,int*) ;
 int cx231xx_set_gpio_bit (struct cx231xx*,int ,int) ;

int cx231xx_gpio_i2c_read_byte(struct cx231xx *dev, u8 *buf)
{
 u8 value = 0;
 int status = 0;
 u32 gpio_logic_value = 0;
 u8 i;


 for (i = 0; i < 8; i++) {


  dev->gpio_val &= ~(1 << dev->board.tuner_scl_gpio);
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir,
           dev->gpio_val);


  dev->gpio_val |= 1 << dev->board.tuner_scl_gpio;
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir,
           dev->gpio_val);


  gpio_logic_value = dev->gpio_val;
  status = cx231xx_get_gpio_bit(dev, dev->gpio_dir,
           &dev->gpio_val);
  if ((dev->gpio_val & (1 << dev->board.tuner_sda_gpio)) != 0)
   value |= (1 << (8 - i - 1));

  dev->gpio_val = gpio_logic_value;
 }




 dev->gpio_val &= ~(1 << dev->board.tuner_scl_gpio);
 status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);


 *buf = value & 0xff;

 return status;
}
