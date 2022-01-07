
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp3943 {int mux_cfg; struct device* dev; int pdata; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_get_platdata (struct device*) ;
 struct lp3943* devm_kzalloc (struct device*,int,int ) ;
 int devm_mfd_add_devices (struct device*,int,int ,int ,int *,int ,int *) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct lp3943*) ;
 int lp3943_devs ;
 int lp3943_mux_cfg ;
 int lp3943_regmap_config ;

__attribute__((used)) static int lp3943_probe(struct i2c_client *cl, const struct i2c_device_id *id)
{
 struct lp3943 *lp3943;
 struct device *dev = &cl->dev;

 lp3943 = devm_kzalloc(dev, sizeof(*lp3943), GFP_KERNEL);
 if (!lp3943)
  return -ENOMEM;

 lp3943->regmap = devm_regmap_init_i2c(cl, &lp3943_regmap_config);
 if (IS_ERR(lp3943->regmap))
  return PTR_ERR(lp3943->regmap);

 lp3943->pdata = dev_get_platdata(dev);
 lp3943->dev = dev;
 lp3943->mux_cfg = lp3943_mux_cfg;
 i2c_set_clientdata(cl, lp3943);

 return devm_mfd_add_devices(dev, -1, lp3943_devs,
        ARRAY_SIZE(lp3943_devs),
        ((void*)0), 0, ((void*)0));
}
