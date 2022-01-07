
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int addr; int len; int * buf; int flags; } ;
struct cx23885_dev {TYPE_1__* i2c_bus; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int i2c_transfer (int *,struct i2c_msg*,int) ;

int cx23885_flatiron_write(struct cx23885_dev *dev, u8 reg, u8 data)
{

 u8 buf[] = { reg, data };

 struct i2c_msg msg = { .addr = 0x98 >> 1,
  .flags = 0, .buf = buf, .len = 2 };

 return i2c_transfer(&dev->i2c_bus[2].i2c_adap, &msg, 1);
}
