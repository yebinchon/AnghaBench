
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc5t583_platform_data {int irq_base; } ;
struct rc5t583 {int * dev; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 struct rc5t583_platform_data* dev_get_platdata (int *) ;
 int dev_warn (int *,char*,int) ;
 struct rc5t583* devm_kzalloc (int *,int,int ) ;
 int devm_mfd_add_devices (int *,int,int ,int ,int *,int ,int *) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct rc5t583*) ;
 int rc5t583_clear_ext_power_req (struct rc5t583*,struct rc5t583_platform_data*) ;
 int rc5t583_irq_init (struct rc5t583*,int ,int ) ;
 int rc5t583_regmap_config ;
 int rc5t583_subdevs ;

__attribute__((used)) static int rc5t583_i2c_probe(struct i2c_client *i2c,
         const struct i2c_device_id *id)
{
 struct rc5t583 *rc5t583;
 struct rc5t583_platform_data *pdata = dev_get_platdata(&i2c->dev);
 int ret;

 if (!pdata) {
  dev_err(&i2c->dev, "Err: Platform data not found\n");
  return -EINVAL;
 }

 rc5t583 = devm_kzalloc(&i2c->dev, sizeof(*rc5t583), GFP_KERNEL);
 if (!rc5t583)
  return -ENOMEM;

 rc5t583->dev = &i2c->dev;
 i2c_set_clientdata(i2c, rc5t583);

 rc5t583->regmap = devm_regmap_init_i2c(i2c, &rc5t583_regmap_config);
 if (IS_ERR(rc5t583->regmap)) {
  ret = PTR_ERR(rc5t583->regmap);
  dev_err(&i2c->dev, "regmap initialization failed: %d\n", ret);
  return ret;
 }

 ret = rc5t583_clear_ext_power_req(rc5t583, pdata);
 if (ret < 0)
  return ret;

 if (i2c->irq) {
  ret = rc5t583_irq_init(rc5t583, i2c->irq, pdata->irq_base);

  if (ret)
   dev_warn(&i2c->dev, "IRQ init failed: %d\n", ret);
 }

 ret = devm_mfd_add_devices(rc5t583->dev, -1, rc5t583_subdevs,
       ARRAY_SIZE(rc5t583_subdevs), ((void*)0), 0, ((void*)0));
 if (ret) {
  dev_err(&i2c->dev, "add mfd devices failed: %d\n", ret);
  return ret;
 }

 return 0;
}
