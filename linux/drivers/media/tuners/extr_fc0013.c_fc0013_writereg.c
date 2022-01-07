
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct fc0013_priv {int i2c; int addr; } ;


 int EREMOTEIO ;
 int err (char*,int ,int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int fc0013_writereg(struct fc0013_priv *priv, u8 reg, u8 val)
{
 u8 buf[2] = {reg, val};
 struct i2c_msg msg = {
  .addr = priv->addr, .flags = 0, .buf = buf, .len = 2
 };

 if (i2c_transfer(priv->i2c, &msg, 1) != 1) {
  err("I2C write reg failed, reg: %02x, val: %02x", reg, val);
  return -EREMOTEIO;
 }
 return 0;
}
