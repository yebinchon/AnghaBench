
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tuner_reset; } ;
struct tm6000_core {scalar_t__ tuner_type; TYPE_1__ gpio; } ;


 int REQ_03_SET_GET_MCU_PIN ;
 scalar_t__ TUNER_XC5000 ;

 int msleep (int) ;
 int tm6000_set_reg (struct tm6000_core*,int ,int ,int) ;

int tm6000_xc5000_callback(void *ptr, int component, int command, int arg)
{
 int rc = 0;
 struct tm6000_core *dev = ptr;

 if (dev->tuner_type != TUNER_XC5000)
  return 0;

 switch (command) {
 case 128:
  tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
          dev->gpio.tuner_reset, 0x01);
  msleep(15);
  tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
          dev->gpio.tuner_reset, 0x00);
  msleep(15);
  tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
          dev->gpio.tuner_reset, 0x01);
  break;
 }
 return rc;
}
