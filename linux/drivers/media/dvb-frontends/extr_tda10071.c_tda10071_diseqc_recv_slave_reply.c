
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda10071_dev {int regmap; int warm; struct i2c_client* client; } ;
struct tda10071_cmd {int len; scalar_t__* args; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct tda10071_dev* demodulator_priv; } ;
struct dvb_diseqc_slave_reply {unsigned int msg_len; int msg; } ;


 scalar_t__ CMD_LNB_UPDATE_REPLY ;
 int EFAULT ;
 int ETIMEDOUT ;
 int dev_dbg (int *,char*,...) ;
 int regmap_bulk_read (int ,int,int ,int) ;
 int regmap_read (int ,int,unsigned int*) ;
 int tda10071_cmd_execute (struct tda10071_dev*,struct tda10071_cmd*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tda10071_diseqc_recv_slave_reply(struct dvb_frontend *fe,
 struct dvb_diseqc_slave_reply *reply)
{
 struct tda10071_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;
 struct tda10071_cmd cmd;
 int ret, i;
 unsigned int uitmp;

 if (!dev->warm) {
  ret = -EFAULT;
  goto error;
 }

 dev_dbg(&client->dev, "\n");


 for (i = 500, uitmp = 0; i && !uitmp; i--) {
  ret = regmap_read(dev->regmap, 0x47, &uitmp);
  if (ret)
   goto error;
  uitmp = (uitmp >> 1) & 1;
  usleep_range(10000, 20000);
 }

 dev_dbg(&client->dev, "loop=%d\n", i);

 if (i == 0) {
  ret = -ETIMEDOUT;
  goto error;
 }


 ret = regmap_read(dev->regmap, 0x46, &uitmp);
 if (ret)
  goto error;

 reply->msg_len = uitmp & 0x1f;
 if (reply->msg_len > sizeof(reply->msg))
  reply->msg_len = sizeof(reply->msg);


 cmd.args[0] = CMD_LNB_UPDATE_REPLY;
 cmd.args[1] = 0;
 cmd.len = 2;
 ret = tda10071_cmd_execute(dev, &cmd);
 if (ret)
  goto error;

 ret = regmap_bulk_read(dev->regmap, cmd.len, reply->msg,
          reply->msg_len);
 if (ret)
  goto error;

 return ret;
error:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
