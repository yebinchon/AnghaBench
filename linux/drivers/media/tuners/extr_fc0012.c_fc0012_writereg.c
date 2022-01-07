
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct fc0012_priv {TYPE_2__* i2c; TYPE_1__* cfg; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int i2c_address; } ;


 int EREMOTEIO ;
 int KBUILD_MODNAME ;
 int dev_err (int *,char*,int ,int ,int ) ;
 int i2c_transfer (TYPE_2__*,struct i2c_msg*,int) ;

__attribute__((used)) static int fc0012_writereg(struct fc0012_priv *priv, u8 reg, u8 val)
{
 u8 buf[2] = {reg, val};
 struct i2c_msg msg = {
  .addr = priv->cfg->i2c_address, .flags = 0, .buf = buf, .len = 2
 };

 if (i2c_transfer(priv->i2c, &msg, 1) != 1) {
  dev_err(&priv->i2c->dev,
   "%s: I2C write reg failed, reg: %02x, val: %02x\n",
   KBUILD_MODNAME, reg, val);
  return -EREMOTEIO;
 }
 return 0;
}
