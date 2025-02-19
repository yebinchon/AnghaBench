
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int adapter; int irq; int dev; } ;
struct da9150_pdata {int irq_base; int fg_pdata; } ;
struct da9150_fg_pdata {int dummy; } ;
struct da9150 {int irq_base; struct i2c_client* core_qif; int regmap_irq_data; int irq; int * dev; struct i2c_client* regmap; } ;
struct TYPE_4__ {int pdata_size; int platform_data; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DA9150_CORE2WIRE_CTRL_A ;
 int DA9150_CORE_BASE_ADDR_MASK ;
 size_t DA9150_FG_IDX ;
 int DA9150_QIF_I2C_ADDR_LSB ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (struct i2c_client*) ;
 int PTR_ERR (struct i2c_client*) ;
 TYPE_1__* da9150_devs ;
 int da9150_reg_read (struct da9150*,int ) ;
 int da9150_regmap_config ;
 int da9150_regmap_irq_chip ;
 int dev_err (int *,char*,...) ;
 struct da9150_pdata* dev_get_platdata (int *) ;
 struct da9150* devm_kzalloc (int *,int,int ) ;
 struct i2c_client* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int enable_irq_wake (int ) ;
 struct i2c_client* i2c_new_dummy_device (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct da9150*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int mfd_add_devices (int *,int,TYPE_1__*,int ,int *,int,int *) ;
 int regmap_add_irq_chip (struct i2c_client*,int ,int,int,int *,int *) ;
 int regmap_del_irq_chip (int ,int ) ;
 int regmap_irq_chip_get_base (int ) ;

__attribute__((used)) static int da9150_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct da9150 *da9150;
 struct da9150_pdata *pdata = dev_get_platdata(&client->dev);
 int qif_addr;
 int ret;

 da9150 = devm_kzalloc(&client->dev, sizeof(*da9150), GFP_KERNEL);
 if (!da9150)
  return -ENOMEM;

 da9150->dev = &client->dev;
 da9150->irq = client->irq;
 i2c_set_clientdata(client, da9150);

 da9150->regmap = devm_regmap_init_i2c(client, &da9150_regmap_config);
 if (IS_ERR(da9150->regmap)) {
  ret = PTR_ERR(da9150->regmap);
  dev_err(da9150->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }


 qif_addr = da9150_reg_read(da9150, DA9150_CORE2WIRE_CTRL_A);
 qif_addr = (qif_addr & DA9150_CORE_BASE_ADDR_MASK) >> 1;
 qif_addr |= DA9150_QIF_I2C_ADDR_LSB;
 da9150->core_qif = i2c_new_dummy_device(client->adapter, qif_addr);
 if (IS_ERR(da9150->core_qif)) {
  dev_err(da9150->dev, "Failed to attach QIF client\n");
  return PTR_ERR(da9150->core_qif);
 }

 i2c_set_clientdata(da9150->core_qif, da9150);

 if (pdata) {
  da9150->irq_base = pdata->irq_base;

  da9150_devs[DA9150_FG_IDX].platform_data = pdata->fg_pdata;
  da9150_devs[DA9150_FG_IDX].pdata_size =
   sizeof(struct da9150_fg_pdata);
 } else {
  da9150->irq_base = -1;
 }

 ret = regmap_add_irq_chip(da9150->regmap, da9150->irq,
      IRQF_TRIGGER_LOW | IRQF_ONESHOT,
      da9150->irq_base, &da9150_regmap_irq_chip,
      &da9150->regmap_irq_data);
 if (ret) {
  dev_err(da9150->dev, "Failed to add regmap irq chip: %d\n",
   ret);
  goto regmap_irq_fail;
 }


 da9150->irq_base = regmap_irq_chip_get_base(da9150->regmap_irq_data);

 enable_irq_wake(da9150->irq);

 ret = mfd_add_devices(da9150->dev, -1, da9150_devs,
         ARRAY_SIZE(da9150_devs), ((void*)0),
         da9150->irq_base, ((void*)0));
 if (ret) {
  dev_err(da9150->dev, "Failed to add child devices: %d\n", ret);
  goto mfd_fail;
 }

 return 0;

mfd_fail:
 regmap_del_irq_chip(da9150->irq, da9150->regmap_irq_data);
regmap_irq_fail:
 i2c_unregister_device(da9150->core_qif);

 return ret;
}
