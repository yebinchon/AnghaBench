
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct tda10071_dev {int delivery_system; int regmap; int warm; struct i2c_client* client; } ;
struct tda10071_cmd {int* args; int len; } ;
struct i2c_client {int dev; } ;
struct dtv_frontend_properties {int delivery_system; int modulation; int frequency; int symbol_rate; int inversion; scalar_t__ fec_inner; int pilot; int rolloff; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct tda10071_dev* demodulator_priv; } ;
typedef enum fe_modulation { ____Placeholder_fe_modulation } fe_modulation ;
struct TYPE_7__ {int delivery_system; int modulation; scalar_t__ fec; int val; } ;
struct TYPE_5__ {int frequency_tolerance_hz; } ;
struct TYPE_6__ {TYPE_1__ info; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int CMD_CHANGE_CHANNEL ;
 int EFAULT ;
 int EINVAL ;






 int QPSK ;






 int SYS_UNDEFINED ;
 TYPE_3__* TDA10071_MODCOD ;
 int dev_dbg (int *,char*,...) ;
 int regmap_write (int ,int,int) ;
 int tda10071_cmd_execute (struct tda10071_dev*,struct tda10071_cmd*) ;
 TYPE_2__ tda10071_ops ;

__attribute__((used)) static int tda10071_set_frontend(struct dvb_frontend *fe)
{
 struct tda10071_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;
 struct tda10071_cmd cmd;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 int ret, i;
 u8 mode, rolloff, pilot, inversion, div;
 enum fe_modulation modulation;

 dev_dbg(&client->dev,
  "delivery_system=%d modulation=%d frequency=%u symbol_rate=%d inversion=%d pilot=%d rolloff=%d\n",
  c->delivery_system, c->modulation, c->frequency, c->symbol_rate,
  c->inversion, c->pilot, c->rolloff);

 dev->delivery_system = SYS_UNDEFINED;

 if (!dev->warm) {
  ret = -EFAULT;
  goto error;
 }

 switch (c->inversion) {
 case 138:
  inversion = 1;
  break;
 case 137:
  inversion = 0;
  break;
 case 139:


  inversion = 3;
  break;
 default:
  dev_dbg(&client->dev, "invalid inversion\n");
  ret = -EINVAL;
  goto error;
 }

 switch (c->delivery_system) {
 case 129:
  modulation = QPSK;
  rolloff = 0;
  pilot = 2;
  break;
 case 128:
  modulation = c->modulation;

  switch (c->rolloff) {
  case 133:
   rolloff = 2;
   break;
  case 132:
   rolloff = 1;
   break;
  case 131:
   rolloff = 0;
   break;
  case 130:
  default:
   dev_dbg(&client->dev, "invalid rolloff\n");
   ret = -EINVAL;
   goto error;
  }

  switch (c->pilot) {
  case 135:
   pilot = 0;
   break;
  case 134:
   pilot = 1;
   break;
  case 136:
   pilot = 2;
   break;
  default:
   dev_dbg(&client->dev, "invalid pilot\n");
   ret = -EINVAL;
   goto error;
  }
  break;
 default:
  dev_dbg(&client->dev, "invalid delivery_system\n");
  ret = -EINVAL;
  goto error;
 }

 for (i = 0, mode = 0xff; i < ARRAY_SIZE(TDA10071_MODCOD); i++) {
  if (c->delivery_system == TDA10071_MODCOD[i].delivery_system &&
   modulation == TDA10071_MODCOD[i].modulation &&
   c->fec_inner == TDA10071_MODCOD[i].fec) {
   mode = TDA10071_MODCOD[i].val;
   dev_dbg(&client->dev, "mode found=%02x\n", mode);
   break;
  }
 }

 if (mode == 0xff) {
  dev_dbg(&client->dev, "invalid parameter combination\n");
  ret = -EINVAL;
  goto error;
 }

 if (c->symbol_rate <= 5000000)
  div = 14;
 else
  div = 4;

 ret = regmap_write(dev->regmap, 0x81, div);
 if (ret)
  goto error;

 ret = regmap_write(dev->regmap, 0xe3, div);
 if (ret)
  goto error;

 cmd.args[0] = CMD_CHANGE_CHANNEL;
 cmd.args[1] = 0;
 cmd.args[2] = mode;
 cmd.args[3] = (c->frequency >> 16) & 0xff;
 cmd.args[4] = (c->frequency >> 8) & 0xff;
 cmd.args[5] = (c->frequency >> 0) & 0xff;
 cmd.args[6] = ((c->symbol_rate / 1000) >> 8) & 0xff;
 cmd.args[7] = ((c->symbol_rate / 1000) >> 0) & 0xff;
 cmd.args[8] = ((tda10071_ops.info.frequency_tolerance_hz / 1000) >> 8) & 0xff;
 cmd.args[9] = ((tda10071_ops.info.frequency_tolerance_hz / 1000) >> 0) & 0xff;
 cmd.args[10] = rolloff;
 cmd.args[11] = inversion;
 cmd.args[12] = pilot;
 cmd.args[13] = 0x00;
 cmd.args[14] = 0x00;
 cmd.len = 15;
 ret = tda10071_cmd_execute(dev, &cmd);
 if (ret)
  goto error;

 dev->delivery_system = c->delivery_system;

 return ret;
error:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
