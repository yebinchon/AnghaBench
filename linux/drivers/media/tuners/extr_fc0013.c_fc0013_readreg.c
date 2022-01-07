
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct fc0013_priv {int i2c; int addr; } ;


 int EREMOTEIO ;
 int I2C_M_RD ;
 int err (char*,int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int fc0013_readreg(struct fc0013_priv *priv, u8 reg, u8 *val)
{
 struct i2c_msg msg[2] = {
  { .addr = priv->addr, .flags = 0, .buf = &reg, .len = 1 },
  { .addr = priv->addr, .flags = I2C_M_RD, .buf = val, .len = 1 },
 };

 if (i2c_transfer(priv->i2c, msg, 2) != 2) {
  err("I2C read reg failed, reg: %02x", reg);
  return -EREMOTEIO;
 }
 return 0;
}
