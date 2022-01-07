
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_dev {struct i2c_client* i2c_muic; struct i2c_client* i2c_haptic; int irq_data_led; int irq; int irq_data_topsys; int irq_data_chg; int irq_data_muic; int * dev; struct i2c_client* regmap; struct i2c_client* regmap_muic; struct i2c_client* regmap_haptic; int type; struct i2c_client* i2c; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {int adapter; int irq; int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_ADDR_HAPTIC ;
 int I2C_ADDR_MUIC ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (struct i2c_client*) ;
 int MAX77693_PMIC_REG_INTSRC_MASK ;
 int MAX77693_PMIC_REG_PMIC_ID2 ;
 int PTR_ERR (struct i2c_client*) ;
 scalar_t__ SRC_IRQ_ALL ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,unsigned int) ;
 struct max77693_dev* devm_kzalloc (int *,int,int ) ;
 void* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 void* i2c_new_dummy_device (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct max77693_dev*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int max77693_charger_irq_chip ;
 int max77693_devs ;
 int max77693_led_irq_chip ;
 int max77693_muic_irq_chip ;
 int max77693_regmap_config ;
 int max77693_regmap_haptic_config ;
 int max77693_regmap_muic_config ;
 int max77693_topsys_irq_chip ;
 int mfd_add_devices (int *,int,int ,int ,int *,int ,int *) ;
 int mfd_remove_devices (int *) ;
 int pm_runtime_set_active (int *) ;
 int regmap_add_irq_chip (struct i2c_client*,int ,int,int ,int *,int *) ;
 int regmap_del_irq_chip (int ,int ) ;
 int regmap_read (struct i2c_client*,int ,unsigned int*) ;
 int regmap_update_bits (struct i2c_client*,int ,scalar_t__,unsigned int) ;

__attribute__((used)) static int max77693_i2c_probe(struct i2c_client *i2c,
         const struct i2c_device_id *id)
{
 struct max77693_dev *max77693;
 unsigned int reg_data;
 int ret = 0;

 max77693 = devm_kzalloc(&i2c->dev,
   sizeof(struct max77693_dev), GFP_KERNEL);
 if (max77693 == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, max77693);
 max77693->dev = &i2c->dev;
 max77693->i2c = i2c;
 max77693->irq = i2c->irq;
 max77693->type = id->driver_data;

 max77693->regmap = devm_regmap_init_i2c(i2c, &max77693_regmap_config);
 if (IS_ERR(max77693->regmap)) {
  ret = PTR_ERR(max77693->regmap);
  dev_err(max77693->dev, "failed to allocate register map: %d\n",
    ret);
  return ret;
 }

 ret = regmap_read(max77693->regmap, MAX77693_PMIC_REG_PMIC_ID2,
    &reg_data);
 if (ret < 0) {
  dev_err(max77693->dev, "device not found on this channel\n");
  return ret;
 } else
  dev_info(max77693->dev, "device ID: 0x%x\n", reg_data);

 max77693->i2c_muic = i2c_new_dummy_device(i2c->adapter, I2C_ADDR_MUIC);
 if (IS_ERR(max77693->i2c_muic)) {
  dev_err(max77693->dev, "Failed to allocate I2C device for MUIC\n");
  return PTR_ERR(max77693->i2c_muic);
 }
 i2c_set_clientdata(max77693->i2c_muic, max77693);

 max77693->i2c_haptic = i2c_new_dummy_device(i2c->adapter, I2C_ADDR_HAPTIC);
 if (IS_ERR(max77693->i2c_haptic)) {
  dev_err(max77693->dev, "Failed to allocate I2C device for Haptic\n");
  ret = PTR_ERR(max77693->i2c_haptic);
  goto err_i2c_haptic;
 }
 i2c_set_clientdata(max77693->i2c_haptic, max77693);

 max77693->regmap_haptic = devm_regmap_init_i2c(max77693->i2c_haptic,
     &max77693_regmap_haptic_config);
 if (IS_ERR(max77693->regmap_haptic)) {
  ret = PTR_ERR(max77693->regmap_haptic);
  dev_err(max77693->dev,
   "failed to initialize haptic register map: %d\n", ret);
  goto err_regmap;
 }






 max77693->regmap_muic = devm_regmap_init_i2c(max77693->i2c_muic,
      &max77693_regmap_muic_config);
 if (IS_ERR(max77693->regmap_muic)) {
  ret = PTR_ERR(max77693->regmap_muic);
  dev_err(max77693->dev,
   "failed to allocate register map: %d\n", ret);
  goto err_regmap;
 }

 ret = regmap_add_irq_chip(max77693->regmap, max77693->irq,
    IRQF_ONESHOT | IRQF_SHARED |
    IRQF_TRIGGER_FALLING, 0,
    &max77693_led_irq_chip,
    &max77693->irq_data_led);
 if (ret) {
  dev_err(max77693->dev, "failed to add irq chip: %d\n", ret);
  goto err_regmap;
 }

 ret = regmap_add_irq_chip(max77693->regmap, max77693->irq,
    IRQF_ONESHOT | IRQF_SHARED |
    IRQF_TRIGGER_FALLING, 0,
    &max77693_topsys_irq_chip,
    &max77693->irq_data_topsys);
 if (ret) {
  dev_err(max77693->dev, "failed to add irq chip: %d\n", ret);
  goto err_irq_topsys;
 }

 ret = regmap_add_irq_chip(max77693->regmap, max77693->irq,
    IRQF_ONESHOT | IRQF_SHARED |
    IRQF_TRIGGER_FALLING, 0,
    &max77693_charger_irq_chip,
    &max77693->irq_data_chg);
 if (ret) {
  dev_err(max77693->dev, "failed to add irq chip: %d\n", ret);
  goto err_irq_charger;
 }

 ret = regmap_add_irq_chip(max77693->regmap_muic, max77693->irq,
    IRQF_ONESHOT | IRQF_SHARED |
    IRQF_TRIGGER_FALLING, 0,
    &max77693_muic_irq_chip,
    &max77693->irq_data_muic);
 if (ret) {
  dev_err(max77693->dev, "failed to add irq chip: %d\n", ret);
  goto err_irq_muic;
 }


 ret = regmap_update_bits(max77693->regmap,
    MAX77693_PMIC_REG_INTSRC_MASK,
    SRC_IRQ_ALL, (unsigned int)~SRC_IRQ_ALL);
 if (ret < 0) {
  dev_err(max77693->dev,
   "Could not unmask interrupts in INTSRC: %d\n",
   ret);
  goto err_intsrc;
 }

 pm_runtime_set_active(max77693->dev);

 ret = mfd_add_devices(max77693->dev, -1, max77693_devs,
         ARRAY_SIZE(max77693_devs), ((void*)0), 0, ((void*)0));
 if (ret < 0)
  goto err_mfd;

 return ret;

err_mfd:
 mfd_remove_devices(max77693->dev);
err_intsrc:
 regmap_del_irq_chip(max77693->irq, max77693->irq_data_muic);
err_irq_muic:
 regmap_del_irq_chip(max77693->irq, max77693->irq_data_chg);
err_irq_charger:
 regmap_del_irq_chip(max77693->irq, max77693->irq_data_topsys);
err_irq_topsys:
 regmap_del_irq_chip(max77693->irq, max77693->irq_data_led);
err_regmap:
 i2c_unregister_device(max77693->i2c_haptic);
err_i2c_haptic:
 i2c_unregister_device(max77693->i2c_muic);
 return ret;
}
