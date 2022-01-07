
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tuner_scl_gpio; int tuner_sda_gpio; } ;
struct cx231xx {int gpio_dir; int gpio_val; TYPE_1__ board; } ;


 int cx231xx_set_gpio_bit (struct cx231xx*,int,int) ;

int cx231xx_gpio_i2c_write_byte(struct cx231xx *dev, u8 data)
{
 int status = 0;
 u8 i;


 dev->gpio_dir |= 1 << dev->board.tuner_scl_gpio;
 dev->gpio_dir |= 1 << dev->board.tuner_sda_gpio;

 for (i = 0; i < 8; i++) {
  if (((data << i) & 0x80) == 0) {

   dev->gpio_val &= ~(1 << dev->board.tuner_scl_gpio);
   dev->gpio_val &= ~(1 << dev->board.tuner_sda_gpio);
   status = cx231xx_set_gpio_bit(dev, dev->gpio_dir,
            dev->gpio_val);


   dev->gpio_val |= 1 << dev->board.tuner_scl_gpio;
   status = cx231xx_set_gpio_bit(dev, dev->gpio_dir,
            dev->gpio_val);


   dev->gpio_val &= ~(1 << dev->board.tuner_scl_gpio);
   status = cx231xx_set_gpio_bit(dev, dev->gpio_dir,
            dev->gpio_val);
  } else {

   dev->gpio_val &= ~(1 << dev->board.tuner_scl_gpio);
   dev->gpio_val |= 1 << dev->board.tuner_sda_gpio;
   status = cx231xx_set_gpio_bit(dev, dev->gpio_dir,
            dev->gpio_val);


   dev->gpio_val |= 1 << dev->board.tuner_scl_gpio;
   status = cx231xx_set_gpio_bit(dev, dev->gpio_dir,
            dev->gpio_val);


   dev->gpio_val &= ~(1 << dev->board.tuner_scl_gpio);
   status = cx231xx_set_gpio_bit(dev, dev->gpio_dir,
            dev->gpio_val);
  }
 }
 return status;
}
