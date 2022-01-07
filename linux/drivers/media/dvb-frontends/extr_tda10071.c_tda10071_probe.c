
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tda10071_platform_data {int get_dvb_frontend; int tuner_i2c_addr; int pll_multiplier; int spec_inv; int ts_mode; int i2c_wr_max; int clk; } ;
struct TYPE_4__ {struct tda10071_dev* demodulator_priv; int ops; } ;
struct tda10071_dev {TYPE_1__ fe; int regmap; int tuner_i2c_addr; int pll_multiplier; int spec_inv; int ts_mode; int i2c_wr_max; int clk; int cmd_execute_mutex; struct i2c_client* client; } ;
struct regmap_config {int reg_bits; int val_bits; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {struct tda10071_platform_data* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct dvb_frontend_ops {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_dbg (TYPE_2__*,char*,int) ;
 int dev_info (TYPE_2__*,char*) ;
 int devm_regmap_init_i2c (struct i2c_client*,struct regmap_config const*) ;
 int i2c_set_clientdata (struct i2c_client*,struct tda10071_dev*) ;
 int kfree (struct tda10071_dev*) ;
 struct tda10071_dev* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int mutex_init (int *) ;
 int regmap_read (int ,int,unsigned int*) ;
 int tda10071_get_dvb_frontend ;
 int tda10071_ops ;

__attribute__((used)) static int tda10071_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct tda10071_dev *dev;
 struct tda10071_platform_data *pdata = client->dev.platform_data;
 int ret;
 unsigned int uitmp;
 static const struct regmap_config regmap_config = {
  .reg_bits = 8,
  .val_bits = 8,
 };

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  ret = -ENOMEM;
  goto err;
 }

 dev->client = client;
 mutex_init(&dev->cmd_execute_mutex);
 dev->clk = pdata->clk;
 dev->i2c_wr_max = pdata->i2c_wr_max;
 dev->ts_mode = pdata->ts_mode;
 dev->spec_inv = pdata->spec_inv;
 dev->pll_multiplier = pdata->pll_multiplier;
 dev->tuner_i2c_addr = pdata->tuner_i2c_addr;
 dev->regmap = devm_regmap_init_i2c(client, &regmap_config);
 if (IS_ERR(dev->regmap)) {
  ret = PTR_ERR(dev->regmap);
  goto err_kfree;
 }


 ret = regmap_read(dev->regmap, 0xff, &uitmp);
 if (ret)
  goto err_kfree;
 if (uitmp != 0x0f) {
  ret = -ENODEV;
  goto err_kfree;
 }


 ret = regmap_read(dev->regmap, 0xdd, &uitmp);
 if (ret)
  goto err_kfree;
 if (uitmp != 0x00) {
  ret = -ENODEV;
  goto err_kfree;
 }


 ret = regmap_read(dev->regmap, 0xfe, &uitmp);
 if (ret)
  goto err_kfree;
 if (uitmp != 0x01) {
  ret = -ENODEV;
  goto err_kfree;
 }


 memcpy(&dev->fe.ops, &tda10071_ops, sizeof(struct dvb_frontend_ops));
 dev->fe.demodulator_priv = dev;
 i2c_set_clientdata(client, dev);


 pdata->get_dvb_frontend = tda10071_get_dvb_frontend;

 dev_info(&client->dev, "NXP TDA10071 successfully identified\n");
 return 0;
err_kfree:
 kfree(dev);
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
