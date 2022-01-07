
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_lmu_data {int num_cells; int cells; int max_register; } ;
struct ti_lmu {struct device* dev; int notifier; int en_gpio; int regmap; } ;
struct regmap_config {int reg_bits; int val_bits; int max_register; int name; } ;
struct i2c_device_id {int driver_data; int name; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 int BLOCKING_INIT_NOTIFIER_HEAD (int *) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int devm_add_action_or_reset (struct device*,int ,struct ti_lmu*) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct ti_lmu* devm_kzalloc (struct device*,int,int ) ;
 int devm_mfd_add_devices (struct device*,int ,int ,int ,int *,int ,int *) ;
 int devm_regmap_init_i2c (struct i2c_client*,struct regmap_config*) ;
 int i2c_set_clientdata (struct i2c_client*,struct ti_lmu*) ;
 int memset (struct regmap_config*,int ,int) ;
 struct ti_lmu_data* of_device_get_match_data (struct device*) ;
 int ti_lmu_disable_hw ;
 int ti_lmu_enable_hw (struct ti_lmu*,int ) ;

__attribute__((used)) static int ti_lmu_probe(struct i2c_client *cl, const struct i2c_device_id *id)
{
 struct device *dev = &cl->dev;
 const struct ti_lmu_data *data;
 struct regmap_config regmap_cfg;
 struct ti_lmu *lmu;
 int ret;





 data = of_device_get_match_data(dev);
 if (!data)
  return -ENODEV;

 lmu = devm_kzalloc(dev, sizeof(*lmu), GFP_KERNEL);
 if (!lmu)
  return -ENOMEM;

 lmu->dev = &cl->dev;


 memset(&regmap_cfg, 0, sizeof(struct regmap_config));
 regmap_cfg.reg_bits = 8;
 regmap_cfg.val_bits = 8;
 regmap_cfg.name = id->name;
 regmap_cfg.max_register = data->max_register;

 lmu->regmap = devm_regmap_init_i2c(cl, &regmap_cfg);
 if (IS_ERR(lmu->regmap))
  return PTR_ERR(lmu->regmap);


 lmu->en_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_HIGH);
 if (IS_ERR(lmu->en_gpio)) {
  ret = PTR_ERR(lmu->en_gpio);
  dev_err(dev, "Can not request enable GPIO: %d\n", ret);
  return ret;
 }

 ret = ti_lmu_enable_hw(lmu, id->driver_data);
 if (ret)
  return ret;

 ret = devm_add_action_or_reset(dev, ti_lmu_disable_hw, lmu);
 if (ret)
  return ret;






 BLOCKING_INIT_NOTIFIER_HEAD(&lmu->notifier);

 i2c_set_clientdata(cl, lmu);

 return devm_mfd_add_devices(lmu->dev, 0, data->cells,
        data->num_cells, ((void*)0), 0, ((void*)0));
}
