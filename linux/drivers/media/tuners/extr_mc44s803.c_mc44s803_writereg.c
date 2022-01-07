
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mc44s803_priv {int i2c; TYPE_1__* cfg; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_2__ {int i2c_address; } ;


 int EREMOTEIO ;
 int KERN_WARNING ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int mc_printk (int ,char*) ;

__attribute__((used)) static int mc44s803_writereg(struct mc44s803_priv *priv, u32 val)
{
 u8 buf[3];
 struct i2c_msg msg = {
  .addr = priv->cfg->i2c_address, .flags = 0, .buf = buf, .len = 3
 };

 buf[0] = (val & 0xff0000) >> 16;
 buf[1] = (val & 0xff00) >> 8;
 buf[2] = (val & 0xff);

 if (i2c_transfer(priv->i2c, &msg, 1) != 1) {
  mc_printk(KERN_WARNING, "I2C write failed\n");
  return -EREMOTEIO;
 }
 return 0;
}
