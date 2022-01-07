
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int reg_bits; int val_bits; struct ts2020_priv* lock_arg; int unlock; int lock; } ;
struct ts2020_priv {int clk_out; int clk_out_div; int frequency_div; scalar_t__ tuner; int regmap; scalar_t__ loop_through; int stat_work; struct i2c_client* client; int get_agc_pwm; struct dvb_frontend* fe; int dont_poll; int i2c_address; int i2c; TYPE_2__ regmap_config; int regmap_mutex; } ;
struct ts2020_config {int clk_out; int clk_out_div; int frequency_div; int attach_in_use; int get_agc_pwm; int dont_poll; scalar_t__ loop_through; struct dvb_frontend* fe; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {struct ts2020_config* platform_data; } ;
struct i2c_client {TYPE_4__ dev; int addr; int adapter; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_8__ {int * release; } ;
struct TYPE_6__ {TYPE_3__ tuner_ops; } ;
struct dvb_frontend {TYPE_1__ ops; struct ts2020_priv* tuner_priv; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;



 scalar_t__ TS2020_M88TS2020 ;
 scalar_t__ TS2020_M88TS2022 ;
 int dev_dbg (TYPE_4__*,char*,int) ;
 int dev_info (TYPE_4__*,char*,char*) ;
 int i2c_set_clientdata (struct i2c_client*,struct ts2020_priv*) ;
 int kfree (struct ts2020_priv*) ;
 struct ts2020_priv* kzalloc (int,int ) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int mutex_init (int *) ;
 int regmap_exit (int ) ;
 int regmap_init_i2c (struct i2c_client*,TYPE_2__*) ;
 int regmap_read (int ,int,unsigned int*) ;
 int regmap_write (int ,int,int) ;
 int ts2020_regmap_lock ;
 int ts2020_regmap_unlock ;
 int ts2020_stat_work ;
 int ts2020_tuner_ops ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ts2020_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct ts2020_config *pdata = client->dev.platform_data;
 struct dvb_frontend *fe = pdata->fe;
 struct ts2020_priv *dev;
 int ret;
 u8 u8tmp;
 unsigned int utmp;
 char *chip_str;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  ret = -ENOMEM;
  goto err;
 }


 mutex_init(&dev->regmap_mutex);
 dev->regmap_config.reg_bits = 8,
 dev->regmap_config.val_bits = 8,
 dev->regmap_config.lock = ts2020_regmap_lock,
 dev->regmap_config.unlock = ts2020_regmap_unlock,
 dev->regmap_config.lock_arg = dev,
 dev->regmap = regmap_init_i2c(client, &dev->regmap_config);
 if (IS_ERR(dev->regmap)) {
  ret = PTR_ERR(dev->regmap);
  goto err_kfree;
 }

 dev->i2c = client->adapter;
 dev->i2c_address = client->addr;
 dev->loop_through = pdata->loop_through;
 dev->clk_out = pdata->clk_out;
 dev->clk_out_div = pdata->clk_out_div;
 dev->dont_poll = pdata->dont_poll;
 dev->frequency_div = pdata->frequency_div;
 dev->fe = fe;
 dev->get_agc_pwm = pdata->get_agc_pwm;
 fe->tuner_priv = dev;
 dev->client = client;
 INIT_DELAYED_WORK(&dev->stat_work, ts2020_stat_work);


 ret = regmap_read(dev->regmap, 0x00, &utmp);
 if (ret)
  goto err_regmap_exit;

 if ((utmp & 0x03) == 0x00) {
  ret = regmap_write(dev->regmap, 0x00, 0x01);
  if (ret)
   goto err_regmap_exit;

  usleep_range(2000, 50000);
 }

 ret = regmap_write(dev->regmap, 0x00, 0x03);
 if (ret)
  goto err_regmap_exit;

 usleep_range(2000, 50000);

 ret = regmap_read(dev->regmap, 0x00, &utmp);
 if (ret)
  goto err_regmap_exit;

 dev_dbg(&client->dev, "chip_id=%02x\n", utmp);

 switch (utmp) {
 case 0x01:
 case 0x41:
 case 0x81:
  dev->tuner = TS2020_M88TS2020;
  chip_str = "TS2020";
  if (!dev->frequency_div)
   dev->frequency_div = 1060000;
  break;
 case 0xc3:
 case 0x83:
  dev->tuner = TS2020_M88TS2022;
  chip_str = "TS2022";
  if (!dev->frequency_div)
   dev->frequency_div = 1103000;
  break;
 default:
  ret = -ENODEV;
  goto err_regmap_exit;
 }

 if (dev->tuner == TS2020_M88TS2022) {
  switch (dev->clk_out) {
  case 130:
   u8tmp = 0x60;
   break;
  case 129:
   u8tmp = 0x70;
   ret = regmap_write(dev->regmap, 0x05, dev->clk_out_div);
   if (ret)
    goto err_regmap_exit;
   break;
  case 128:
   u8tmp = 0x6c;
   break;
  default:
   ret = -EINVAL;
   goto err_regmap_exit;
  }

  ret = regmap_write(dev->regmap, 0x42, u8tmp);
  if (ret)
   goto err_regmap_exit;

  if (dev->loop_through)
   u8tmp = 0xec;
  else
   u8tmp = 0x6c;

  ret = regmap_write(dev->regmap, 0x62, u8tmp);
  if (ret)
   goto err_regmap_exit;
 }


 ret = regmap_write(dev->regmap, 0x00, 0x00);
 if (ret)
  goto err_regmap_exit;

 dev_info(&client->dev,
   "Montage Technology %s successfully identified\n", chip_str);

 memcpy(&fe->ops.tuner_ops, &ts2020_tuner_ops,
   sizeof(struct dvb_tuner_ops));
 if (!pdata->attach_in_use)
  fe->ops.tuner_ops.release = ((void*)0);

 i2c_set_clientdata(client, dev);
 return 0;
err_regmap_exit:
 regmap_exit(dev->regmap);
err_kfree:
 kfree(dev);
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
