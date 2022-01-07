
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda18250_dev {int warm; size_t xtal_freq; int regmap; scalar_t__ loopthrough; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct i2c_client* tuner_priv; } ;


 int ARRAY_SIZE (int const**) ;
 int const R0A_IRQ3 ;
 int const R2A_MSM1 ;
 int const R2B_MSM2 ;
 int R4D_XTALFLX1 ;



 int TDA18250_IRQ_CAL ;
 int TDA18250_IRQ_HW_INIT ;
 int TDA18250_POWER_NORMAL ;





 int dev_dbg (int *,char*,...) ;
 struct tda18250_dev* i2c_get_clientdata (struct i2c_client*) ;
 int msleep (int) ;
 int regmap_bulk_write (int ,int ,int const*,int) ;
 int regmap_write (int ,int const,int const) ;
 int regmap_write_bits (int ,int const,int,int) ;
 int tda18250_power_control (struct dvb_frontend*,int ) ;
 int tda18250_wait_for_irq (struct dvb_frontend*,int,int,int) ;

__attribute__((used)) static int tda18250_init(struct dvb_frontend *fe)
{
 struct i2c_client *client = fe->tuner_priv;
 struct tda18250_dev *dev = i2c_get_clientdata(client);
 int ret, i;


 static const u8 init_regs[][2] = {
  { 166, 0xc7 },
  { 165, 0x5d },
  { 164, 0x40 },
  { 163, 0x0e },
  { 162, 0x47 },
  { 161, 0x4e },
  { 160, 0x26 },
  { 159, 0x60 },
  { 158, 0x37 },
  { 157, 0x09 },
  { 156, 0x00 },
  { 155, 0x29 },
  { 154, 0x06 },
  { 153, 0xc6 },
  { 152, 0x00 },
  { 151, 0x75 },
  { 150, 0x06 },
  { 149, 0x07 },
  { 148, 0x0e },
  { 147, 0x00 },
  { 146, 0x00 },
  { 145, 0x55 },
  { 144, 0xa7 },
  { 143, 0x85 },
  { 142, 0x87 },
  { 141, 0xc0 },
  { 140, 0x40 },
  { 139, 0xc0 },
  { 138, 0x0c },
  { 137, 0x64 },
  { 136, 0x30 },
  { 135, 0x05 },
  { 134, 0x07 },
  { 133, 0x00 },
 };


 static const u8 xtal_regs[][5] = {

  [132] = { 0x3e, 0x80, 0x50, 0x00, 0x20 },
  [131] = { 0x5d, 0xc0, 0xec, 0x00, 0x18 },
  [130] = { 0x61, 0xa8, 0xec, 0x80, 0x19 },
  [129] = { 0x69, 0x78, 0x8d, 0x80, 0x1b },
  [128] = { 0x75, 0x30, 0x8f, 0x00, 0x1e },
 };

 dev_dbg(&client->dev, "\n");

 ret = tda18250_power_control(fe, TDA18250_POWER_NORMAL);
 if (ret)
  goto err;

 msleep(20);

 if (dev->warm)
  goto warm;


 for (i = 0; i < ARRAY_SIZE(init_regs); i++) {
  ret = regmap_write(dev->regmap, init_regs[i][0],
    init_regs[i][1]);
  if (ret)
   goto err;
 }


 ret = regmap_bulk_write(dev->regmap, R4D_XTALFLX1,
   xtal_regs[dev->xtal_freq], 5);
 if (ret)
  goto err;

 ret = regmap_write_bits(dev->regmap, 162, 0x80,
   dev->loopthrough ? 0x00 : 0x80);
 if (ret)
  goto err;


 ret = regmap_write(dev->regmap, R0A_IRQ3, TDA18250_IRQ_HW_INIT);
 if (ret)
  goto err;


 ret = regmap_write(dev->regmap, R2A_MSM1, 0x70);
 if (ret)
  goto err;

 ret = regmap_write(dev->regmap, R2B_MSM2, 0x01);
 if (ret)
  goto err;

 ret = tda18250_wait_for_irq(fe, 500, 10, TDA18250_IRQ_HW_INIT);
 if (ret)
  goto err;


 ret = regmap_write(dev->regmap, R2A_MSM1, 0x02);
 if (ret)
  goto err;

 ret = regmap_write(dev->regmap, R2B_MSM2, 0x01);
 if (ret)
  goto err;

 ret = tda18250_wait_for_irq(fe, 500, 10, TDA18250_IRQ_CAL);
 if (ret)
  goto err;

 dev->warm = 1;

warm:

 ret = regmap_write_bits(dev->regmap, 166, 0x80, 0x00);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d", ret);
 return ret;
}
