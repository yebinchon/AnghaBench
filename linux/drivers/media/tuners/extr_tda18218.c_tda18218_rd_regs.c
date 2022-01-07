
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct tda18218_priv {TYPE_2__* i2c; TYPE_1__* cfg; } ;
struct i2c_msg {int len; char* buf; int flags; int addr; } ;
typedef int buf ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int i2c_address; } ;


 int EINVAL ;
 int EREMOTEIO ;
 int I2C_M_RD ;
 int KBUILD_MODNAME ;
 int MAX_XFER_SIZE ;
 int dev_warn (int *,char*,int ,int,size_t,...) ;
 int i2c_transfer (TYPE_2__*,struct i2c_msg*,int) ;
 int memcpy (size_t*,size_t*,size_t) ;

__attribute__((used)) static int tda18218_rd_regs(struct tda18218_priv *priv, u8 reg, u8 *val, u8 len)
{
 int ret;
 u8 buf[MAX_XFER_SIZE];
 struct i2c_msg msg[2] = {
  {
   .addr = priv->cfg->i2c_address,
   .flags = 0,
   .len = 1,
   .buf = "\x00",
  }, {
   .addr = priv->cfg->i2c_address,
   .flags = I2C_M_RD,
   .len = reg + len,
   .buf = buf,
  }
 };

 if (reg + len > sizeof(buf)) {
  dev_warn(&priv->i2c->dev,
    "%s: i2c wr reg=%04x: len=%d is too big!\n",
    KBUILD_MODNAME, reg, len);
  return -EINVAL;
 }

 ret = i2c_transfer(priv->i2c, msg, 2);
 if (ret == 2) {
  memcpy(val, &buf[reg], len);
  ret = 0;
 } else {
  dev_warn(&priv->i2c->dev, "%s: i2c rd failed=%d reg=%02x " "len=%d\n", KBUILD_MODNAME, ret, reg, len);

  ret = -EREMOTEIO;
 }

 return ret;
}
