
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct tda10071_dev {int fe_status; int regmap; int warm; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct tda10071_dev* demodulator_priv; } ;
struct dtv_frontend_properties {int frequency; int symbol_rate; int pilot; int inversion; int delivery_system; int fec_inner; int modulation; } ;
struct TYPE_3__ {int val; int delivery_system; int fec; int modulation; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int FE_HAS_LOCK ;
 int INVERSION_OFF ;
 int INVERSION_ON ;
 int PILOT_OFF ;
 int PILOT_ON ;
 TYPE_1__* TDA10071_MODCOD ;
 int dev_dbg (int *,char*,int) ;
 int regmap_bulk_read (int ,int,int*,int) ;

__attribute__((used)) static int tda10071_get_frontend(struct dvb_frontend *fe,
     struct dtv_frontend_properties *c)
{
 struct tda10071_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;
 int ret, i;
 u8 buf[5], tmp;

 if (!dev->warm || !(dev->fe_status & FE_HAS_LOCK)) {
  ret = 0;
  goto error;
 }

 ret = regmap_bulk_read(dev->regmap, 0x30, buf, 5);
 if (ret)
  goto error;

 tmp = buf[0] & 0x3f;
 for (i = 0; i < ARRAY_SIZE(TDA10071_MODCOD); i++) {
  if (tmp == TDA10071_MODCOD[i].val) {
   c->modulation = TDA10071_MODCOD[i].modulation;
   c->fec_inner = TDA10071_MODCOD[i].fec;
   c->delivery_system = TDA10071_MODCOD[i].delivery_system;
  }
 }

 switch ((buf[1] >> 0) & 0x01) {
 case 0:
  c->inversion = INVERSION_ON;
  break;
 case 1:
  c->inversion = INVERSION_OFF;
  break;
 }

 switch ((buf[1] >> 7) & 0x01) {
 case 0:
  c->pilot = PILOT_OFF;
  break;
 case 1:
  c->pilot = PILOT_ON;
  break;
 }

 c->frequency = (buf[2] << 16) | (buf[3] << 8) | (buf[4] << 0);

 ret = regmap_bulk_read(dev->regmap, 0x52, buf, 3);
 if (ret)
  goto error;

 c->symbol_rate = ((buf[0] << 16) | (buf[1] << 8) | (buf[2] << 0)) * 1000;

 return ret;
error:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
