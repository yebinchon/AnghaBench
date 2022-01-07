
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct of_device_id {struct i2c_device_id* data; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; int irq; } ;
struct device_node {int dummy; } ;
struct da9052 {int regmap; int fix_io; int chip_irq; TYPE_1__* dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int da9052_device_init (struct da9052*,int ) ;
 int da9052_i2c_disable_multiwrite (struct da9052*) ;
 int da9052_i2c_fix ;
 int da9052_regmap_config ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct da9052* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int dialog_dt_ids ;
 int i2c_set_clientdata (struct i2c_client*,struct da9052*) ;
 struct of_device_id* of_match_node (int ,struct device_node*) ;

__attribute__((used)) static int da9052_i2c_probe(struct i2c_client *client,
           const struct i2c_device_id *id)
{
 struct da9052 *da9052;
 int ret;

 da9052 = devm_kzalloc(&client->dev, sizeof(struct da9052), GFP_KERNEL);
 if (!da9052)
  return -ENOMEM;

 da9052->dev = &client->dev;
 da9052->chip_irq = client->irq;
 da9052->fix_io = da9052_i2c_fix;

 i2c_set_clientdata(client, da9052);

 da9052->regmap = devm_regmap_init_i2c(client, &da9052_regmap_config);
 if (IS_ERR(da9052->regmap)) {
  ret = PTR_ERR(da9052->regmap);
  dev_err(&client->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 ret = da9052_i2c_disable_multiwrite(da9052);
 if (ret < 0)
  return ret;
 if (!id) {
  ret = -ENODEV;
  dev_err(&client->dev, "id is null.\n");
  return ret;
 }

 return da9052_device_init(da9052, id->driver_data);
}
