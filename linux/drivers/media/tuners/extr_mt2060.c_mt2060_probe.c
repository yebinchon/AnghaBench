
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_8__ {int clock_out; int i2c_address; } ;
struct mt2060_priv {int if1_freq; int sleep; scalar_t__ i2c_max_regs; struct i2c_client* client; int i2c; TYPE_1__ config; TYPE_1__* cfg; } ;
struct mt2060_platform_data {int if1; scalar_t__ i2c_write_max; int clock_out; struct dvb_frontend* dvb_frontend; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_11__ {struct mt2060_platform_data* platform_data; } ;
struct i2c_client {TYPE_4__ dev; int adapter; int addr; } ;
struct TYPE_10__ {int * release; } ;
struct TYPE_9__ {TYPE_3__ tuner_ops; } ;
struct dvb_frontend {struct mt2060_priv* tuner_priv; TYPE_2__ ops; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PART_REV ;
 int REG_MISC_CTRL ;
 int REG_PART_REV ;
 int dev_dbg (TYPE_4__*,char*,...) ;
 int dev_err (TYPE_4__*,char*) ;
 int dev_info (TYPE_4__*,char*) ;
 struct mt2060_priv* devm_kzalloc (TYPE_4__*,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct mt2060_priv*) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int mt2060_calibrate (struct mt2060_priv*) ;
 int mt2060_readreg (struct mt2060_priv*,int ,scalar_t__*) ;
 int mt2060_tuner_ops ;
 int mt2060_writereg (struct mt2060_priv*,int ,int) ;

__attribute__((used)) static int mt2060_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct mt2060_platform_data *pdata = client->dev.platform_data;
 struct dvb_frontend *fe;
 struct mt2060_priv *dev;
 int ret;
 u8 chip_id;

 dev_dbg(&client->dev, "\n");

 if (!pdata) {
  dev_err(&client->dev, "Cannot proceed without platform data\n");
  ret = -EINVAL;
  goto err;
 }

 dev = devm_kzalloc(&client->dev, sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  ret = -ENOMEM;
  goto err;
 }

 fe = pdata->dvb_frontend;
 dev->config.i2c_address = client->addr;
 dev->config.clock_out = pdata->clock_out;
 dev->cfg = &dev->config;
 dev->i2c = client->adapter;
 dev->if1_freq = pdata->if1 ? pdata->if1 : 1220;
 dev->client = client;
 dev->i2c_max_regs = pdata->i2c_write_max ? pdata->i2c_write_max - 1 : ~0;
 dev->sleep = 1;

 ret = mt2060_readreg(dev, REG_PART_REV, &chip_id);
 if (ret) {
  ret = -ENODEV;
  goto err;
 }

 dev_dbg(&client->dev, "chip id=%02x\n", chip_id);

 if (chip_id != PART_REV) {
  ret = -ENODEV;
  goto err;
 }


 ret = mt2060_writereg(dev, REG_MISC_CTRL, 0x20);
 if (ret)
  goto err;
 mt2060_calibrate(dev);
 ret = mt2060_writereg(dev, REG_MISC_CTRL, 0xe8);
 if (ret)
  goto err;

 dev_info(&client->dev, "Microtune MT2060 successfully identified\n");
 memcpy(&fe->ops.tuner_ops, &mt2060_tuner_ops, sizeof(fe->ops.tuner_ops));
 fe->ops.tuner_ops.release = ((void*)0);
 fe->tuner_priv = dev;
 i2c_set_clientdata(client, dev);

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
