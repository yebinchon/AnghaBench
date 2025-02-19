
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct i2c_adapter {int dummy; } ;


 int EIO ;
 int I2C_M_RD ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int i2c_readregs(struct i2c_adapter *i2c, u8 id, u8 reg, u8 * buf, u8 len)
{
 u8 mm1[] = { reg };
 struct i2c_msg msgs[2] = {
  {.addr = id / 2,.flags = 0,.buf = mm1,.len = 1},
  {.addr = id / 2,.flags = I2C_M_RD,.buf = buf,.len = len}
 };

 if (i2c_transfer(i2c, msgs, 2) != 2)
  return -EIO;

 return 0;
}
