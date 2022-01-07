
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tuner_reset; } ;
struct tm6000_core {scalar_t__ tuner_type; TYPE_1__ gpio; int model; } ;


 int REQ_03_SET_GET_MCU_PIN ;
 int REQ_04_EN_DISABLE_MCU_INT ;
 int REQ_50_SET_START ;
 int REQ_51_SET_STOP ;




 scalar_t__ TUNER_XC2028 ;



 int msleep (int) ;
 int tm6000_i2c_reset (struct tm6000_core*,int) ;
 int tm6000_ir_wait (struct tm6000_core*,int) ;
 int tm6000_set_reg (struct tm6000_core*,int ,int,int) ;

int tm6000_tuner_callback(void *ptr, int component, int command, int arg)
{
 int rc = 0;
 struct tm6000_core *dev = ptr;

 if (dev->tuner_type != TUNER_XC2028)
  return 0;

 switch (command) {
 case 129:
  tm6000_ir_wait(dev, 0);

  tm6000_set_reg(dev, REQ_04_EN_DISABLE_MCU_INT,
     0x02, arg);
  msleep(10);
  rc = tm6000_i2c_reset(dev, 10);
  break;
 case 128:

  switch (arg) {
  case 0:

   switch (dev->model) {
   case 134:
    tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
            dev->gpio.tuner_reset, 0x01);
    tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
            0x300, 0x01);
    msleep(10);
    tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
            dev->gpio.tuner_reset, 0x00);
    tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
            0x300, 0x00);
    msleep(10);
    tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
            dev->gpio.tuner_reset, 0x01);
    tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
            0x300, 0x01);
    break;
   case 133:
   case 132:
   case 131:
    tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
            dev->gpio.tuner_reset, 0x01);
    msleep(60);
    tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
            dev->gpio.tuner_reset, 0x00);
    msleep(75);
    tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
            dev->gpio.tuner_reset, 0x01);
    msleep(60);
    break;
   default:
    tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
            dev->gpio.tuner_reset, 0x00);
    msleep(130);
    tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
            dev->gpio.tuner_reset, 0x01);
    msleep(130);
    break;
   }

   tm6000_ir_wait(dev, 1);
   break;
  case 1:
   tm6000_set_reg(dev, REQ_04_EN_DISABLE_MCU_INT,
      0x02, 0x01);
   msleep(10);
   break;
  case 2:
   rc = tm6000_i2c_reset(dev, 100);
   break;
  }
  break;
 case 130:
  tm6000_set_reg(dev, REQ_50_SET_START, 0, 0);
  tm6000_set_reg(dev, REQ_51_SET_STOP, 0, 0);
  break;
 }
 return rc;
}
