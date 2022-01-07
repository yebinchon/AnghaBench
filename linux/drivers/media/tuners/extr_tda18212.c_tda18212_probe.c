
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tda18212_dev {struct i2c_client* client; int regmap; int cfg; } ;
struct tda18212_config {struct dvb_frontend* fe; } ;
struct regmap_config {int reg_bits; int val_bits; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {struct tda18212_config* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_5__ {int tuner_ops; int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct tda18212_dev* tuner_priv; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_dbg (TYPE_2__*,char*,int) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*,char*) ;
 int devm_regmap_init_i2c (struct i2c_client*,struct regmap_config const*) ;
 int i2c_set_clientdata (struct i2c_client*,struct tda18212_dev*) ;
 int kfree (struct tda18212_dev*) ;
 struct tda18212_dev* kzalloc (int,int ) ;
 int memcpy (int *,struct tda18212_config*,int) ;
 int regmap_read (int ,int,unsigned int*) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 struct tda18212_config tda18212_tuner_ops ;

__attribute__((used)) static int tda18212_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct tda18212_config *cfg = client->dev.platform_data;
 struct dvb_frontend *fe = cfg->fe;
 struct tda18212_dev *dev;
 int ret;
 unsigned int chip_id;
 char *version;
 static const struct regmap_config regmap_config = {
  .reg_bits = 8,
  .val_bits = 8,
 };

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0)) {
  ret = -ENOMEM;
  dev_err(&client->dev, "kzalloc() failed\n");
  goto err;
 }

 memcpy(&dev->cfg, cfg, sizeof(struct tda18212_config));
 dev->client = client;
 dev->regmap = devm_regmap_init_i2c(client, &regmap_config);
 if (IS_ERR(dev->regmap)) {
  ret = PTR_ERR(dev->regmap);
  goto err;
 }


 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 ret = regmap_read(dev->regmap, 0x00, &chip_id);
 dev_dbg(&dev->client->dev, "chip_id=%02x\n", chip_id);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 if (ret)
  goto err;

 switch (chip_id) {
 case 0xc7:
  version = "M";
  break;
 case 0x47:
  version = "S";
  break;
 default:
  ret = -ENODEV;
  goto err;
 }

 dev_info(&dev->client->dev,
   "NXP TDA18212HN/%s successfully identified\n", version);

 fe->tuner_priv = dev;
 memcpy(&fe->ops.tuner_ops, &tda18212_tuner_ops,
   sizeof(struct dvb_tuner_ops));
 i2c_set_clientdata(client, dev);

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 kfree(dev);
 return ret;
}
