
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx_i2c_bus {struct em28xx* dev; } ;
struct TYPE_2__ {int tuner_gpio; } ;
struct em28xx {scalar_t__ tuner_type; TYPE_1__ board; } ;


 scalar_t__ TUNER_XC2028 ;
 scalar_t__ TUNER_XC5000 ;
 int XC2028_TUNER_RESET ;
 int XC5000_TUNER_RESET ;
 int em28xx_gpio_set (struct em28xx*,int ) ;

int em28xx_tuner_callback(void *ptr, int component, int command, int arg)
{
 struct em28xx_i2c_bus *i2c_bus = ptr;
 struct em28xx *dev = i2c_bus->dev;
 int rc = 0;

 if (dev->tuner_type != TUNER_XC2028 && dev->tuner_type != TUNER_XC5000)
  return 0;

 if (command != XC2028_TUNER_RESET && command != XC5000_TUNER_RESET)
  return 0;

 rc = em28xx_gpio_set(dev, dev->board.tuner_gpio);

 return rc;
}
