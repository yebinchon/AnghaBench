
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct cx231xx {TYPE_2__* muxc; TYPE_1__* i2c_bus; } ;
struct TYPE_4__ {struct i2c_adapter** adapter; } ;
struct TYPE_3__ {struct i2c_adapter i2c_adap; } ;


 int BUG () ;






struct i2c_adapter *cx231xx_get_i2c_adap(struct cx231xx *dev, int i2c_port)
{
 switch (i2c_port) {
 case 132:
  return &dev->i2c_bus[0].i2c_adap;
 case 131:
  return &dev->i2c_bus[1].i2c_adap;
 case 128:
  return &dev->i2c_bus[2].i2c_adap;
 case 130:
  return dev->muxc->adapter[0];
 case 129:
  return dev->muxc->adapter[1];
 default:
  BUG();
 }
}
