
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {int len; unsigned char* buf; int flags; int addr; } ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_adapter {TYPE_1__* algo; } ;
struct TYPE_2__ {int (* master_xfer ) (struct i2c_adapter*,struct i2c_msg*,int) ;} ;


 int EINVAL ;
 int I2C_M_RD ;
 int I2C_SMBUS_BLOCK_MAX ;
 int memcpy (void*,unsigned char*,int) ;
 int stub1 (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int read_device(struct i2c_client *i2c, int reg,
         int bytes, void *dest)
{
 unsigned char msgbuf0[I2C_SMBUS_BLOCK_MAX + 3];
 unsigned char msgbuf1[I2C_SMBUS_BLOCK_MAX + 2];
 struct i2c_adapter *adap = i2c->adapter;
 struct i2c_msg msg[2] = {
     {
      .addr = i2c->addr,
      .flags = 0,
      .len = 1,
      .buf = msgbuf0
     },
     { .addr = i2c->addr,
      .flags = I2C_M_RD,
      .len = 0,
      .buf = msgbuf1
     },
    };
 int num = 1, ret = 0;

 if (dest == ((void*)0))
  return -EINVAL;
 msgbuf0[0] = (unsigned char)reg;
 msg[1].len = bytes;


 if (bytes > 0)
  num = 2;
 ret = adap->algo->master_xfer(adap, msg, num);
 memcpy(dest, msgbuf1, bytes);
 if (ret < 0)
  return ret;
 return 0;
}
