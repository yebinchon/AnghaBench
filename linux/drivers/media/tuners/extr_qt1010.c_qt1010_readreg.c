
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qt1010_priv {TYPE_2__* i2c; TYPE_1__* cfg; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int i2c_address; } ;


 int EREMOTEIO ;
 int I2C_M_RD ;
 int KBUILD_MODNAME ;
 int dev_warn (int *,char*,int ,int ) ;
 int i2c_transfer (TYPE_2__*,struct i2c_msg*,int) ;

__attribute__((used)) static int qt1010_readreg(struct qt1010_priv *priv, u8 reg, u8 *val)
{
 struct i2c_msg msg[2] = {
  { .addr = priv->cfg->i2c_address,
    .flags = 0, .buf = &reg, .len = 1 },
  { .addr = priv->cfg->i2c_address,
    .flags = I2C_M_RD, .buf = val, .len = 1 },
 };

 if (i2c_transfer(priv->i2c, msg, 2) != 2) {
  dev_warn(&priv->i2c->dev, "%s: i2c rd failed reg=%02x\n",
    KBUILD_MODNAME, reg);
  return -EREMOTEIO;
 }
 return 0;
}
