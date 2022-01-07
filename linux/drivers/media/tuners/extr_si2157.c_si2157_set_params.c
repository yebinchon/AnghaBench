
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct si2157_dev {scalar_t__ chiptype; int if_port; int if_frequency; scalar_t__ inversion; int active; } ;
struct si2157_cmd {int* args; int wlen; int rlen; } ;
struct i2c_client {int dev; } ;
struct dtv_frontend_properties {int delivery_system; int frequency; int bandwidth_hz; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct i2c_client* tuner_priv; } ;


 int EAGAIN ;
 int EINVAL ;
 scalar_t__ SI2157_CHIPTYPE_SI2146 ;





 int dev_dbg (int *,char*,int,...) ;
 struct si2157_dev* i2c_get_clientdata (struct i2c_client*) ;
 int memcpy (int*,char*,int) ;
 int si2157_cmd_execute (struct i2c_client*,struct si2157_cmd*) ;

__attribute__((used)) static int si2157_set_params(struct dvb_frontend *fe)
{
 struct i2c_client *client = fe->tuner_priv;
 struct si2157_dev *dev = i2c_get_clientdata(client);
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 int ret;
 struct si2157_cmd cmd;
 u8 bandwidth, delivery_system;
 u32 if_frequency = 5000000;

 dev_dbg(&client->dev,
   "delivery_system=%d frequency=%u bandwidth_hz=%u\n",
   c->delivery_system, c->frequency, c->bandwidth_hz);

 if (!dev->active) {
  ret = -EAGAIN;
  goto err;
 }

 if (c->bandwidth_hz <= 6000000)
  bandwidth = 0x06;
 else if (c->bandwidth_hz <= 7000000)
  bandwidth = 0x07;
 else if (c->bandwidth_hz <= 8000000)
  bandwidth = 0x08;
 else
  bandwidth = 0x0f;

 switch (c->delivery_system) {
 case 132:
   delivery_system = 0x00;
   if_frequency = 3250000;
   break;
 case 130:
   delivery_system = 0x10;
   if_frequency = 4000000;
   break;
 case 129:
 case 128:
   delivery_system = 0x20;
   break;
 case 131:
   delivery_system = 0x30;
   break;
 default:
   ret = -EINVAL;
   goto err;
 }

 memcpy(cmd.args, "\x14\x00\x03\x07\x00\x00", 6);
 cmd.args[4] = delivery_system | bandwidth;
 if (dev->inversion)
  cmd.args[5] = 0x01;
 cmd.wlen = 6;
 cmd.rlen = 4;
 ret = si2157_cmd_execute(client, &cmd);
 if (ret)
  goto err;

 if (dev->chiptype == SI2157_CHIPTYPE_SI2146)
  memcpy(cmd.args, "\x14\x00\x02\x07\x00\x01", 6);
 else
  memcpy(cmd.args, "\x14\x00\x02\x07\x00\x00", 6);
 cmd.args[4] = dev->if_port;
 cmd.wlen = 6;
 cmd.rlen = 4;
 ret = si2157_cmd_execute(client, &cmd);
 if (ret)
  goto err;


 if (if_frequency != dev->if_frequency) {
  memcpy(cmd.args, "\x14\x00\x06\x07", 4);
  cmd.args[4] = (if_frequency / 1000) & 0xff;
  cmd.args[5] = ((if_frequency / 1000) >> 8) & 0xff;
  cmd.wlen = 6;
  cmd.rlen = 4;
  ret = si2157_cmd_execute(client, &cmd);
  if (ret)
   goto err;

  dev->if_frequency = if_frequency;
 }


 memcpy(cmd.args, "\x41\x00\x00\x00\x00\x00\x00\x00", 8);
 cmd.args[4] = (c->frequency >> 0) & 0xff;
 cmd.args[5] = (c->frequency >> 8) & 0xff;
 cmd.args[6] = (c->frequency >> 16) & 0xff;
 cmd.args[7] = (c->frequency >> 24) & 0xff;
 cmd.wlen = 8;
 cmd.rlen = 1;
 ret = si2157_cmd_execute(client, &cmd);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
