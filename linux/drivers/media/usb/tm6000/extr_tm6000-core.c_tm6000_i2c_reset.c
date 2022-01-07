
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tm6000_core {int dummy; } ;


 int REQ_03_SET_GET_MCU_PIN ;
 int TM6000_GPIO_CLK ;
 int msleep (int ) ;
 int tm6000_set_reg (struct tm6000_core*,int ,int ,int) ;

int tm6000_i2c_reset(struct tm6000_core *dev, u16 tsleep)
{
 int rc;

 rc = tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN, TM6000_GPIO_CLK, 0);
 if (rc < 0)
  return rc;

 msleep(tsleep);

 rc = tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN, TM6000_GPIO_CLK, 1);
 msleep(tsleep);

 return rc;
}
