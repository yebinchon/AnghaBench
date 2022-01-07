
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18250_dev {scalar_t__ if_frequency; int regmap; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct i2c_client* tuner_priv; } ;


 int R0C_AGC11 ;
 int TDA18250_POWER_STANDBY ;
 int dev_dbg (int *,char*) ;
 struct tda18250_dev* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_write_bits (int ,int ,int,int) ;
 int tda18250_power_control (struct dvb_frontend*,int ) ;

__attribute__((used)) static int tda18250_sleep(struct dvb_frontend *fe)
{
 struct i2c_client *client = fe->tuner_priv;
 struct tda18250_dev *dev = i2c_get_clientdata(client);
 int ret;

 dev_dbg(&client->dev, "\n");


 ret = regmap_write_bits(dev->regmap, R0C_AGC11, 0x80, 0x00);
 if (ret)
  return ret;


 dev->if_frequency = 0;

 ret = tda18250_power_control(fe, TDA18250_POWER_STANDBY);
 return ret;
}
