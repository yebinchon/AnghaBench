
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct tda18250_dev {scalar_t__ if_atsc; scalar_t__ if_dvbt_6; scalar_t__ if_dvbt_7; scalar_t__ if_dvbt_8; scalar_t__ if_dvbc_6; scalar_t__ if_dvbc_8; scalar_t__ if_frequency; int regmap; } ;
struct i2c_client {int dev; } ;
struct dtv_frontend_properties {int delivery_system; int frequency; int bandwidth_hz; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct i2c_client* tuner_priv; } ;



 size_t DIV_ROUND_CLOSEST (scalar_t__,int) ;





 int EINVAL ;

 size_t const R0A_IRQ3 ;
 size_t const R14_AGC23 ;
 size_t const R1A_AGCK ;
 size_t const R26_IF ;
 int R27_RF1 ;
 size_t const R2A_MSM1 ;
 size_t const R2B_MSM2 ;
 size_t const R39_SD5 ;
 size_t const R46_CPUMP ;
 size_t const R4F_XTALFLX3 ;






 int TDA18250_IRQ_TUNE ;
 int dev_dbg (int *,char*,scalar_t__,...) ;
 int dev_err (int *,char*,int) ;
 struct tda18250_dev* i2c_get_clientdata (struct i2c_client*) ;
 int msleep (int) ;
 int regmap_bulk_write (int ,int ,size_t*,int) ;
 int regmap_write (int ,size_t const,int) ;
 int regmap_write_bits (int ,size_t const,size_t const,size_t const) ;
 int tda18250_pll_calc (struct dvb_frontend*,size_t*,size_t*,size_t*) ;
 int tda18250_set_agc (struct dvb_frontend*) ;
 int tda18250_wait_for_irq (struct dvb_frontend*,int,int,int) ;

__attribute__((used)) static int tda18250_set_params(struct dvb_frontend *fe)
{
 struct i2c_client *client = fe->tuner_priv;
 struct tda18250_dev *dev = i2c_get_clientdata(client);
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 u32 if_khz;
 int ret;
 unsigned int i, j;
 u8 utmp;
 u8 buf[3];
 static const u8 delsys_params[][16] = {
  [0] = { 0x22, 0x23, 0x24, 0x21, 0x0d, 0x0c, 0x0f, 0x14,
        0x0e, 0x12, 0x58, 0x59, 0x1a, 0x19, 0x1e, 0x30 },
  [1] = { 0x77, 0xff, 0xff, 0x87, 0xf0, 0x78, 0x07, 0xe0,
        0x60, 0x0f, 0x60, 0x0f, 0x33, 0x30, 0x80, 0x06 },
  [2] = { 0x51, 0x03, 0x83, 0x82, 0x40, 0x48, 0x01, 0xe0,
        0x60, 0x0f, 0x60, 0x05, 0x03, 0x10, 0x00, 0x04 },
  [3] = { 0x52, 0x03, 0x85, 0x82, 0x40, 0x48, 0x01, 0xe0,
        0x60, 0x0f, 0x60, 0x05, 0x03, 0x10, 0x00, 0x04 },
  [4] = { 0x53, 0x03, 0x87, 0x82, 0x40, 0x48, 0x06, 0xe0,
        0x60, 0x07, 0x60, 0x05, 0x03, 0x10, 0x00, 0x04 },
  [5] = { 0x32, 0x05, 0x86, 0x82, 0x50, 0x00, 0x06, 0x60,
        0x40, 0x0e, 0x60, 0x05, 0x33, 0x10, 0x00, 0x04 },
  [6] = { 0x53, 0x03, 0x88, 0x82, 0x50, 0x00, 0x06, 0x60,
        0x40, 0x0e, 0x60, 0x05, 0x33, 0x10, 0x00, 0x04 },
  [7] = { 0x51, 0x03, 0x83, 0x82, 0x40, 0x48, 0x01, 0xe0,
        0x40, 0x0e, 0x60, 0x05, 0x03, 0x00, 0x80, 0x04 },
 };

 dev_dbg(&client->dev,
   "delivery_system=%d frequency=%u bandwidth_hz=%u",
   c->delivery_system, c->frequency, c->bandwidth_hz);


 switch (c->delivery_system) {
 case 132:
  j = 7;
  if_khz = dev->if_atsc;
  break;
 case 129:
 case 128:
  if (c->bandwidth_hz == 0) {
   ret = -EINVAL;
   goto err;
  } else if (c->bandwidth_hz <= 6000000) {
   j = 2;
   if_khz = dev->if_dvbt_6;
  } else if (c->bandwidth_hz <= 7000000) {
   j = 3;
   if_khz = dev->if_dvbt_7;
  } else if (c->bandwidth_hz <= 8000000) {
   j = 4;
   if_khz = dev->if_dvbt_8;
  } else {
   ret = -EINVAL;
   goto err;
  }
  break;
 case 131:
 case 130:
  if (c->bandwidth_hz == 0) {
   ret = -EINVAL;
   goto err;
  } else if (c->bandwidth_hz <= 6000000) {
   j = 5;
   if_khz = dev->if_dvbc_6;
  } else if (c->bandwidth_hz <= 8000000) {
   j = 6;
   if_khz = dev->if_dvbc_8;
  } else {
   ret = -EINVAL;
   goto err;
  }
  break;
 default:
  ret = -EINVAL;
  dev_err(&client->dev, "unsupported delivery system=%d",
    c->delivery_system);
  goto err;
 }


 for (i = 0; i < 16; i++) {
  ret = regmap_write_bits(dev->regmap, delsys_params[0][i],
    delsys_params[1][i], delsys_params[j][i]);
  if (ret)
   goto err;
 }


 if (dev->if_frequency != if_khz) {
  utmp = DIV_ROUND_CLOSEST(if_khz, 50);
  ret = regmap_write(dev->regmap, R26_IF, utmp);
  if (ret)
   goto err;
  dev->if_frequency = if_khz;
  dev_dbg(&client->dev, "set IF=%u kHz", if_khz);

 }

 ret = tda18250_set_agc(fe);
 if (ret)
  goto err;

 ret = regmap_write_bits(dev->regmap, R1A_AGCK, 0x03, 0x01);
 if (ret)
  goto err;

 ret = regmap_write_bits(dev->regmap, R14_AGC23, 0x40, 0x00);
 if (ret)
  goto err;


 buf[0] = ((c->frequency / 1000) >> 16) & 0xff;
 buf[1] = ((c->frequency / 1000) >> 8) & 0xff;
 buf[2] = ((c->frequency / 1000) >> 0) & 0xff;
 ret = regmap_bulk_write(dev->regmap, R27_RF1, buf, 3);
 if (ret)
  goto err;

 ret = regmap_write(dev->regmap, R0A_IRQ3, TDA18250_IRQ_TUNE);
 if (ret)
  goto err;


 ret = regmap_write(dev->regmap, R2A_MSM1, 0x01);
 if (ret)
  goto err;

 ret = regmap_write(dev->regmap, R2B_MSM2, 0x01);
 if (ret)
  goto err;

 ret = tda18250_wait_for_irq(fe, 500, 10, TDA18250_IRQ_TUNE);
 if (ret)
  goto err;


 ret = tda18250_pll_calc(fe, &buf[0], &buf[1], &buf[2]);
 if (ret)
  goto err;

 ret = regmap_write_bits(dev->regmap, R4F_XTALFLX3, 0xe0,
   (buf[0] << 6) | (buf[1] << 5));
 if (ret)
  goto err;


 ret = regmap_write(dev->regmap, R0A_IRQ3, TDA18250_IRQ_TUNE);
 if (ret)
  goto err;

 ret = regmap_write_bits(dev->regmap, R46_CPUMP, 0x07, 0x00);
 if (ret)
  goto err;

 ret = regmap_write_bits(dev->regmap, R39_SD5, 0x03, 0x00);
 if (ret)
  goto err;


 ret = regmap_write(dev->regmap, R2A_MSM1, 0x01);
 if (ret)
  goto err;

 ret = regmap_write(dev->regmap, R2B_MSM2, 0x01);
 if (ret)
  goto err;

 ret = tda18250_wait_for_irq(fe, 500, 10, TDA18250_IRQ_TUNE);
 if (ret)
  goto err;


 msleep(20);

 ret = regmap_write_bits(dev->regmap, R2B_MSM2, 0x04, 0x04);
 if (ret)
  goto err;

 msleep(20);


 ret = regmap_write_bits(dev->regmap, R1A_AGCK, 0x03, 0x03);
 if (ret)
  goto err;

 ret = regmap_write_bits(dev->regmap, R14_AGC23, 0x40, 0x40);
 if (ret)
  goto err;


 ret = regmap_write_bits(dev->regmap, R46_CPUMP, 0x07, buf[2]);

 return 0;
err:
 return ret;
}
