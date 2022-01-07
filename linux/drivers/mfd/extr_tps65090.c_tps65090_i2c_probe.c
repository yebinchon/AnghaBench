
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tps65090_platform_data {int irq_base; } ;
struct tps65090 {int irq_data; TYPE_2__* dev; int rmap; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {int of_node; } ;
struct i2c_client {int irq; TYPE_2__ dev; } ;
struct TYPE_8__ {scalar_t__ num_resources; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 size_t CHARGER ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct tps65090_platform_data* dev_get_platdata (TYPE_2__*) ;
 struct tps65090* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct tps65090*) ;
 int mfd_add_devices (TYPE_2__*,int,TYPE_1__*,int ,int *,int ,int ) ;
 int regmap_add_irq_chip (int ,int ,int,int,int *,int *) ;
 int regmap_del_irq_chip (int ,int ) ;
 int regmap_irq_get_domain (int ) ;
 int tps65090_irq_chip ;
 int tps65090_regmap_config ;
 TYPE_1__* tps65090s ;

__attribute__((used)) static int tps65090_i2c_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct tps65090_platform_data *pdata = dev_get_platdata(&client->dev);
 int irq_base = 0;
 struct tps65090 *tps65090;
 int ret;

 if (!pdata && !client->dev.of_node) {
  dev_err(&client->dev,
   "tps65090 requires platform data or of_node\n");
  return -EINVAL;
 }

 if (pdata)
  irq_base = pdata->irq_base;

 tps65090 = devm_kzalloc(&client->dev, sizeof(*tps65090), GFP_KERNEL);
 if (!tps65090)
  return -ENOMEM;

 tps65090->dev = &client->dev;
 i2c_set_clientdata(client, tps65090);

 tps65090->rmap = devm_regmap_init_i2c(client, &tps65090_regmap_config);
 if (IS_ERR(tps65090->rmap)) {
  ret = PTR_ERR(tps65090->rmap);
  dev_err(&client->dev, "regmap_init failed with err: %d\n", ret);
  return ret;
 }

 if (client->irq) {
  ret = regmap_add_irq_chip(tps65090->rmap, client->irq,
       IRQF_ONESHOT | IRQF_TRIGGER_LOW, irq_base,
       &tps65090_irq_chip, &tps65090->irq_data);
  if (ret) {
   dev_err(&client->dev,
    "IRQ init failed with err: %d\n", ret);
   return ret;
  }
 } else {

  tps65090s[CHARGER].num_resources = 0;
 }

 ret = mfd_add_devices(tps65090->dev, -1, tps65090s,
         ARRAY_SIZE(tps65090s), ((void*)0),
         0, regmap_irq_get_domain(tps65090->irq_data));
 if (ret) {
  dev_err(&client->dev, "add mfd devices failed with err: %d\n",
   ret);
  goto err_irq_exit;
 }

 return 0;

err_irq_exit:
 if (client->irq)
  regmap_del_irq_chip(client->irq, tps65090->irq_data);
 return ret;
}
