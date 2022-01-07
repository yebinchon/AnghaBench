
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PLATFORM_DEVID_NONE ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (struct device*,char*,int) ;
 int devm_mfd_add_devices (struct device*,int ,int ,int ,int *,int ,int *) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct regmap*) ;
 int tps68470_chip_init (struct device*,struct regmap*) ;
 int tps68470_regmap_config ;
 int tps68470s ;

__attribute__((used)) static int tps68470_probe(struct i2c_client *client)
{
 struct device *dev = &client->dev;
 struct regmap *regmap;
 int ret;

 regmap = devm_regmap_init_i2c(client, &tps68470_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(dev, "devm_regmap_init_i2c Error %ld\n",
   PTR_ERR(regmap));
  return PTR_ERR(regmap);
 }

 i2c_set_clientdata(client, regmap);

 ret = tps68470_chip_init(dev, regmap);
 if (ret < 0) {
  dev_err(dev, "TPS68470 Init Error %d\n", ret);
  return ret;
 }

 ret = devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE, tps68470s,
         ARRAY_SIZE(tps68470s), ((void*)0), 0, ((void*)0));
 if (ret < 0) {
  dev_err(dev, "devm_mfd_add_devices failed: %d\n", ret);
  return ret;
 }

 return 0;
}
