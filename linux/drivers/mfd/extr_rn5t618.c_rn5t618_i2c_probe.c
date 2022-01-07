
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct rn5t618 {long variant; int regmap; } ;
struct of_device_id {scalar_t__ data; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {int of_node; } ;
struct i2c_client {TYPE_3__ dev; } ;
struct TYPE_8__ {int priority; int notifier_call; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_3__*,char*,...) ;
 int dev_warn (TYPE_3__*,char*) ;
 struct rn5t618* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_mfd_add_devices (TYPE_3__*,int,int ,int ,int *,int ,int *) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct rn5t618*) ;
 scalar_t__ of_device_is_system_power_controller (int ) ;
 struct of_device_id* of_match_device (int ,TYPE_3__*) ;
 scalar_t__ pm_power_off ;
 int register_restart_handler (TYPE_1__*) ;
 int rn5t618_cells ;
 int rn5t618_of_match ;
 struct rn5t618* rn5t618_pm_power_off ;
 scalar_t__ rn5t618_power_off ;
 int rn5t618_regmap_config ;
 int rn5t618_restart ;
 TYPE_1__ rn5t618_restart_handler ;

__attribute__((used)) static int rn5t618_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *id)
{
 const struct of_device_id *of_id;
 struct rn5t618 *priv;
 int ret;

 of_id = of_match_device(rn5t618_of_match, &i2c->dev);
 if (!of_id) {
  dev_err(&i2c->dev, "Failed to find matching DT ID\n");
  return -EINVAL;
 }

 priv = devm_kzalloc(&i2c->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 i2c_set_clientdata(i2c, priv);
 priv->variant = (long)of_id->data;

 priv->regmap = devm_regmap_init_i2c(i2c, &rn5t618_regmap_config);
 if (IS_ERR(priv->regmap)) {
  ret = PTR_ERR(priv->regmap);
  dev_err(&i2c->dev, "regmap init failed: %d\n", ret);
  return ret;
 }

 ret = devm_mfd_add_devices(&i2c->dev, -1, rn5t618_cells,
       ARRAY_SIZE(rn5t618_cells), ((void*)0), 0, ((void*)0));
 if (ret) {
  dev_err(&i2c->dev, "failed to add sub-devices: %d\n", ret);
  return ret;
 }

 rn5t618_pm_power_off = priv;
 if (of_device_is_system_power_controller(i2c->dev.of_node)) {
  if (!pm_power_off)
   pm_power_off = rn5t618_power_off;
  else
   dev_warn(&i2c->dev, "Poweroff callback already assigned\n");
 }

 rn5t618_restart_handler.notifier_call = rn5t618_restart;
 rn5t618_restart_handler.priority = 192;

 ret = register_restart_handler(&rn5t618_restart_handler);
 if (ret) {
  dev_err(&i2c->dev, "cannot register restart handler, %d\n", ret);
  return ret;
 }

 return 0;
}
