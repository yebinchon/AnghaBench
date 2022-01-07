
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PLATFORM_DEVID_NONE ;
 int PTR_ERR (struct regmap*) ;
 int act8945a_devs ;
 int act8945a_regmap_config ;
 int dev_err (int *,char*,...) ;
 int devm_mfd_add_devices (int *,int ,int ,int ,int *,int ,int *) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct regmap*) ;

__attribute__((used)) static int act8945a_i2c_probe(struct i2c_client *i2c,
         const struct i2c_device_id *id)
{
 int ret;
 struct regmap *regmap;

 regmap = devm_regmap_init_i2c(i2c, &act8945a_regmap_config);
 if (IS_ERR(regmap)) {
  ret = PTR_ERR(regmap);
  dev_err(&i2c->dev, "regmap init failed: %d\n", ret);
  return ret;
 }

 i2c_set_clientdata(i2c, regmap);

 ret = devm_mfd_add_devices(&i2c->dev, PLATFORM_DEVID_NONE,
       act8945a_devs, ARRAY_SIZE(act8945a_devs),
       ((void*)0), 0, ((void*)0));
 if (ret) {
  dev_err(&i2c->dev, "Failed to add sub devices\n");
  return ret;
 }

 return 0;
}
