
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct fc0011_priv {TYPE_1__* i2c; int addr; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int I2C_M_RD ;
 int dev_err (int *,char*,int ) ;
 int i2c_transfer (TYPE_1__*,struct i2c_msg*,int) ;

__attribute__((used)) static int fc0011_readreg(struct fc0011_priv *priv, u8 reg, u8 *val)
{
 u8 dummy;
 struct i2c_msg msg[2] = {
  { .addr = priv->addr,
    .flags = 0, .buf = &reg, .len = 1 },
  { .addr = priv->addr,
    .flags = I2C_M_RD, .buf = val ? : &dummy, .len = 1 },
 };

 if (i2c_transfer(priv->i2c, msg, 2) != 2) {
  dev_err(&priv->i2c->dev,
   "I2C read failed, reg: %02x\n", reg);
  return -EIO;
 }

 return 0;
}
