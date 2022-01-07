
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;
struct bd9571mwv {int irq_data; int irq; int * dev; int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR (int ) ;
 int bd9571mwv_cells ;
 int bd9571mwv_identify (struct bd9571mwv*) ;
 int bd9571mwv_irq_chip ;
 int bd9571mwv_regmap_config ;
 int dev_err (int *,char*) ;
 struct bd9571mwv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct bd9571mwv*) ;
 int mfd_add_devices (int *,int ,int ,int ,int *,int ,int ) ;
 int regmap_add_irq_chip (int ,int ,int ,int ,int *,int *) ;
 int regmap_del_irq_chip (int ,int ) ;
 int regmap_irq_get_domain (int ) ;

__attribute__((used)) static int bd9571mwv_probe(struct i2c_client *client,
     const struct i2c_device_id *ids)
{
 struct bd9571mwv *bd;
 int ret;

 bd = devm_kzalloc(&client->dev, sizeof(*bd), GFP_KERNEL);
 if (!bd)
  return -ENOMEM;

 i2c_set_clientdata(client, bd);
 bd->dev = &client->dev;
 bd->irq = client->irq;

 bd->regmap = devm_regmap_init_i2c(client, &bd9571mwv_regmap_config);
 if (IS_ERR(bd->regmap)) {
  dev_err(bd->dev, "Failed to initialize register map\n");
  return PTR_ERR(bd->regmap);
 }

 ret = bd9571mwv_identify(bd);
 if (ret)
  return ret;

 ret = regmap_add_irq_chip(bd->regmap, bd->irq, IRQF_ONESHOT, 0,
      &bd9571mwv_irq_chip, &bd->irq_data);
 if (ret) {
  dev_err(bd->dev, "Failed to register IRQ chip\n");
  return ret;
 }

 ret = mfd_add_devices(bd->dev, PLATFORM_DEVID_AUTO, bd9571mwv_cells,
         ARRAY_SIZE(bd9571mwv_cells), ((void*)0), 0,
         regmap_irq_get_domain(bd->irq_data));
 if (ret) {
  regmap_del_irq_chip(bd->irq, bd->irq_data);
  return ret;
 }

 return 0;
}
