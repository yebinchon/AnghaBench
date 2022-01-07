
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda18250_dev {int regmap; } ;
struct i2c_client {int dev; } ;
struct dtv_frontend_properties {int frequency; int delivery_system; int bandwidth_hz; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct i2c_client* tuner_priv; } ;


 int R0C_AGC11 ;
 int R0F_AGC14 ;
 int R12_AGC21 ;
 int R13_AGC22 ;
 int R14_AGC23 ;
 int R16_AGC25 ;
 int R17_AGC31 ;
 int R1F_RF_BPF ;
 int R20_IR_MIX ;
 int R58_AGC2_UP1 ;
 int R5A_H3H5 ;

 int SYS_DVBC_ANNEX_A ;
 int SYS_DVBC_ANNEX_C ;


 int dev_dbg (int *,char*,...) ;
 struct tda18250_dev* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_write (int ,int ,int) ;
 int regmap_write_bits (int ,int ,int,int) ;

__attribute__((used)) static int tda18250_set_agc(struct dvb_frontend *fe)
{
 struct i2c_client *client = fe->tuner_priv;
 struct tda18250_dev *dev = i2c_get_clientdata(client);
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 int ret;
 u8 utmp, utmp2;

 dev_dbg(&client->dev, "\n");

 ret = regmap_write_bits(dev->regmap, R1F_RF_BPF, 0x87, 0x06);
 if (ret)
  goto err;

 utmp = ((c->frequency < 100000000) &&
   ((c->delivery_system == SYS_DVBC_ANNEX_A) ||
   (c->delivery_system == SYS_DVBC_ANNEX_C)) &&
   (c->bandwidth_hz == 6000000)) ? 0x80 : 0x00;
 ret = regmap_write(dev->regmap, R5A_H3H5, utmp);
 if (ret)
  goto err;


 switch (c->delivery_system) {
 case 130:
 case 129:
 case 128:
  utmp = 4;
  break;
 default:
  switch (c->bandwidth_hz) {
  case 6000000:
   utmp = (c->frequency < 800000000) ? 6 : 4;
   break;
  default:
   utmp = (c->frequency < 100000000) ? 2 : 3;
   break;
  }
  break;
 }

 ret = regmap_write_bits(dev->regmap, R0C_AGC11, 0x07, utmp);
 if (ret)
  goto err;


 switch (c->delivery_system) {
 case 130:
 case 129:
 case 128:
  utmp = (c->frequency < 320000000) ? 20 : 16;
  utmp2 = (c->frequency < 320000000) ? 22 : 18;
  break;
 default:
  switch (c->bandwidth_hz) {
  case 6000000:
   if (c->frequency < 600000000) {
    utmp = 18;
    utmp2 = 22;
   } else if (c->frequency < 800000000) {
    utmp = 16;
    utmp2 = 20;
   } else {
    utmp = 14;
    utmp2 = 16;
   }
   break;
  default:
   utmp = (c->frequency < 320000000) ? 16 : 18;
   utmp2 = (c->frequency < 320000000) ? 18 : 20;
   break;
  }
  break;
 }
 ret = regmap_write_bits(dev->regmap, R58_AGC2_UP1, 0x1f, utmp2+8);
 if (ret)
  goto err;
 ret = regmap_write_bits(dev->regmap, R13_AGC22, 0x1f, utmp);
 if (ret)
  goto err;
 ret = regmap_write_bits(dev->regmap, R14_AGC23, 0x1f, utmp2);
 if (ret)
  goto err;

 switch (c->delivery_system) {
 case 130:
 case 129:
 case 128:
  utmp = 98;
  break;
 default:
  utmp = 90;
  break;
 }
 ret = regmap_write_bits(dev->regmap, R16_AGC25, 0xf8, utmp);
 if (ret)
  goto err;

 ret = regmap_write_bits(dev->regmap, R12_AGC21, 0x60,
   (c->frequency > 800000000) ? 0x40 : 0x20);
 if (ret)
  goto err;


 switch (c->delivery_system) {
 case 130:
 case 129:
 case 128:
  utmp = (c->frequency < 320000000) ? 5 : 7;
  utmp2 = (c->frequency < 320000000) ? 10 : 12;
  break;
 default:
  utmp = 7;
  utmp2 = 12;
  break;
 }
 ret = regmap_write(dev->regmap, R17_AGC31, (utmp << 4) | utmp2);
 if (ret)
  goto err;


 switch (c->delivery_system) {
 case 130:
 case 129:
 case 128:
  if (c->bandwidth_hz == 8000000)
   utmp = 0x04;
  else
   utmp = (c->frequency < 320000000) ? 0x04 : 0x02;
  break;
 default:
  if (c->bandwidth_hz == 6000000)
   utmp = ((c->frequency > 172544000) &&
    (c->frequency < 320000000)) ? 0x04 : 0x02;
  else
   utmp = ((c->frequency > 320000000) &&
    (c->frequency < 600000000)) ? 0x02 : 0x04;
  break;
 }
 ret = regmap_write_bits(dev->regmap, R20_IR_MIX, 0x06, utmp);
 if (ret)
  goto err;

 switch (c->delivery_system) {
 case 130:
 case 129:
 case 128:
  utmp = 0;
  break;
 default:
  utmp = (c->frequency < 600000000) ? 0 : 3;
  break;
 }
 ret = regmap_write_bits(dev->regmap, R16_AGC25, 0x03, utmp);
 if (ret)
  goto err;

 utmp = 0x09;
 switch (c->delivery_system) {
 case 130:
 case 129:
 case 128:
  if (c->bandwidth_hz == 8000000)
   utmp = 0x0c;
  break;
 default:
  utmp = 0x0c;
  break;
 }
 ret = regmap_write_bits(dev->regmap, R0F_AGC14, 0x3f, utmp);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d", ret);
 return ret;
}
