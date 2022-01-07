
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int power_led; } ;
struct tm6000_core {int model; TYPE_1__ gpio; } ;


 int REQ_03_SET_GET_MCU_PIN ;







 int tm6000_set_reg (struct tm6000_core*,int ,int ,int) ;

void tm6000_flash_led(struct tm6000_core *dev, u8 state)
{

 if (!dev->gpio.power_led)
  return;


 if (state) {
  switch (dev->model) {
  case 130:
  case 129:
  case 128:
   tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
    dev->gpio.power_led, 0x00);
   break;
  case 132:
  case 134:
  case 131:
  case 133:
   tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
    dev->gpio.power_led, 0x01);
   break;
  }
 }

 else {
  switch (dev->model) {
  case 130:
  case 129:
  case 128:
   tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
    dev->gpio.power_led, 0x01);
   break;
  case 132:
  case 134:
  case 131:
  case 133:
   tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
    dev->gpio.power_led, 0x00);
   break;
  }
 }
}
