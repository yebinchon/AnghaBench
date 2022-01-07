
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18250_dev {int regmap; int loopthrough; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct i2c_client* tuner_priv; } ;


 int EINVAL ;
 int R06_POWER2 ;
 int R0D_AGC12 ;
 int R10_LT1 ;
 int R25_REF ;


 int dev_dbg (int *,char*,unsigned int) ;
 struct tda18250_dev* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write_bits (int ,int ,int,unsigned int) ;

__attribute__((used)) static int tda18250_power_control(struct dvb_frontend *fe,
  unsigned int power_state)
{
 struct i2c_client *client = fe->tuner_priv;
 struct tda18250_dev *dev = i2c_get_clientdata(client);
 int ret;
 unsigned int utmp;

 dev_dbg(&client->dev, "power state: %d", power_state);

 switch (power_state) {
 case 129:
  ret = regmap_write_bits(dev->regmap, R06_POWER2, 0x07, 0x00);
  if (ret)
   goto err;
  ret = regmap_write_bits(dev->regmap, R25_REF, 0xc0, 0xc0);
  if (ret)
   goto err;
  break;
 case 128:
  if (dev->loopthrough) {
   ret = regmap_write_bits(dev->regmap,
     R25_REF, 0xc0, 0x80);
   if (ret)
    goto err;
   ret = regmap_write_bits(dev->regmap,
     R06_POWER2, 0x07, 0x02);
   if (ret)
    goto err;
   ret = regmap_write_bits(dev->regmap,
     R10_LT1, 0x80, 0x00);
   if (ret)
    goto err;
  } else {
   ret = regmap_write_bits(dev->regmap,
     R25_REF, 0xc0, 0x80);
   if (ret)
    goto err;
   ret = regmap_write_bits(dev->regmap,
     R06_POWER2, 0x07, 0x01);
   if (ret)
    goto err;
   ret = regmap_read(dev->regmap,
     R0D_AGC12, &utmp);
   if (ret)
    goto err;
   ret = regmap_write_bits(dev->regmap,
     R0D_AGC12, 0x03, 0x03);
   if (ret)
    goto err;
   ret = regmap_write_bits(dev->regmap,
     R10_LT1, 0x80, 0x80);
   if (ret)
    goto err;
   ret = regmap_write_bits(dev->regmap,
     R0D_AGC12, 0x03, utmp & 0x03);
   if (ret)
    goto err;
  }
  break;
 default:
  ret = -EINVAL;
  goto err;
 }

 return 0;
err:
 return ret;
}
