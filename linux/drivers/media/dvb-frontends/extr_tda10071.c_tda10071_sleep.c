
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda10071_reg_val_mask {int member_0; int member_1; int member_2; int mask; int val; int reg; } ;
struct tda10071_dev {int warm; struct i2c_client* client; } ;
struct tda10071_cmd {int* args; int len; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct tda10071_dev* demodulator_priv; } ;


 int ARRAY_SIZE (struct tda10071_reg_val_mask*) ;
 int CMD_SET_SLEEP_MODE ;
 int EFAULT ;
 int dev_dbg (int *,char*,int) ;
 int tda10071_cmd_execute (struct tda10071_dev*,struct tda10071_cmd*) ;
 int tda10071_wr_reg_mask (struct tda10071_dev*,int ,int ,int ) ;

__attribute__((used)) static int tda10071_sleep(struct dvb_frontend *fe)
{
 struct tda10071_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;
 struct tda10071_cmd cmd;
 int ret, i;
 struct tda10071_reg_val_mask tab[] = {
  { 0xcd, 0x07, 0x07 },
  { 0x80, 0x02, 0x02 },
  { 0xcd, 0xc0, 0xc0 },
  { 0xce, 0x1b, 0x1b },
  { 0x9d, 0x01, 0x01 },
  { 0x9d, 0x02, 0x02 },
  { 0x9e, 0x01, 0x01 },
  { 0x87, 0x80, 0x80 },
  { 0xce, 0x08, 0x08 },
  { 0xce, 0x10, 0x10 },
 };

 if (!dev->warm) {
  ret = -EFAULT;
  goto error;
 }

 cmd.args[0] = CMD_SET_SLEEP_MODE;
 cmd.args[1] = 0;
 cmd.args[2] = 1;
 cmd.len = 3;
 ret = tda10071_cmd_execute(dev, &cmd);
 if (ret)
  goto error;

 for (i = 0; i < ARRAY_SIZE(tab); i++) {
  ret = tda10071_wr_reg_mask(dev, tab[i].reg, tab[i].val,
   tab[i].mask);
  if (ret)
   goto error;
 }

 return ret;
error:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
