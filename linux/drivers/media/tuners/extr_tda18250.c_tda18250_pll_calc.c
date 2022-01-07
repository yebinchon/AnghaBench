
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda18250_dev {int if_frequency; int xtal_freq; int regmap; } ;
struct i2c_client {int dev; } ;
struct dtv_frontend_properties {int frequency; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct i2c_client* tuner_priv; } ;


 int EINVAL ;
 int R34_MD1 ;





 int dev_dbg (int *,char*,unsigned int,unsigned int,unsigned long,int,int,int) ;
 struct tda18250_dev* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int tda18250_pll_calc(struct dvb_frontend *fe, u8 *rdiv,
  u8 *ndiv, u8 *icp)
{
 struct i2c_client *client = fe->tuner_priv;
 struct tda18250_dev *dev = i2c_get_clientdata(client);
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 int ret;
 unsigned int uval, exp, lopd, scale;
 unsigned long fvco;

 ret = regmap_read(dev->regmap, R34_MD1, &uval);
 if (ret)
  goto err;

 exp = (uval & 0x70) >> 4;
 if (exp > 5)
  exp = 0;
 lopd = 1 << (exp - 1);
 scale = uval & 0x0f;
 fvco = lopd * scale * ((c->frequency / 1000) + dev->if_frequency);

 switch (dev->xtal_freq) {
 case 132:
  *rdiv = 1;
  *ndiv = 0;
  *icp = (fvco < 6622000) ? 0x05 : 0x02;
 break;
 case 131:
 case 130:
  *rdiv = 3;
  *ndiv = 1;
  *icp = (fvco < 6622000) ? 0x05 : 0x02;
 break;
 case 129:
  if (fvco < 6643000) {
   *rdiv = 2;
   *ndiv = 0;
   *icp = 0x05;
  } else if (fvco < 6811000) {
   *rdiv = 2;
   *ndiv = 0;
   *icp = 0x06;
  } else {
   *rdiv = 3;
   *ndiv = 1;
   *icp = 0x02;
  }
 break;
 case 128:
  *rdiv = 2;
  *ndiv = 0;
  *icp = (fvco < 6811000) ? 0x05 : 0x02;
 break;
 default:
  return -EINVAL;
 }

 dev_dbg(&client->dev,
   "lopd=%d scale=%u fvco=%lu, rdiv=%d ndiv=%d icp=%d",
   lopd, scale, fvco, *rdiv, *ndiv, *icp);
 return 0;
err:
 return ret;
}
