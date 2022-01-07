
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_dev {int irq_data_topsys; int irq; int * dev; int regmap; int type; struct i2c_client* i2c; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {int dev; int irq; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ MAX77843_INTSRC_MASK_MASK ;
 int MAX77843_SYS_REG_INTSRCMASK ;
 int MAX77843_SYS_REG_PMICID ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,unsigned int) ;
 int device_init_wakeup (int *,int) ;
 struct max77693_dev* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct max77693_dev*) ;
 int max77843_chg_init (struct max77693_dev*) ;
 int max77843_devs ;
 int max77843_irq_chip ;
 int max77843_regmap_config ;
 int mfd_add_devices (int *,int,int ,int ,int *,int ,int *) ;
 int regmap_add_irq_chip (int ,int ,int,int ,int *,int *) ;
 int regmap_del_irq_chip (int ,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,scalar_t__,unsigned int) ;

__attribute__((used)) static int max77843_probe(struct i2c_client *i2c,
     const struct i2c_device_id *id)
{
 struct max77693_dev *max77843;
 unsigned int reg_data;
 int ret;

 max77843 = devm_kzalloc(&i2c->dev, sizeof(*max77843), GFP_KERNEL);
 if (!max77843)
  return -ENOMEM;

 i2c_set_clientdata(i2c, max77843);
 max77843->dev = &i2c->dev;
 max77843->i2c = i2c;
 max77843->irq = i2c->irq;
 max77843->type = id->driver_data;

 max77843->regmap = devm_regmap_init_i2c(i2c,
   &max77843_regmap_config);
 if (IS_ERR(max77843->regmap)) {
  dev_err(&i2c->dev, "Failed to allocate topsys register map\n");
  return PTR_ERR(max77843->regmap);
 }

 ret = regmap_add_irq_chip(max77843->regmap, max77843->irq,
   IRQF_TRIGGER_LOW | IRQF_ONESHOT | IRQF_SHARED,
   0, &max77843_irq_chip, &max77843->irq_data_topsys);
 if (ret) {
  dev_err(&i2c->dev, "Failed to add TOPSYS IRQ chip\n");
  return ret;
 }

 ret = regmap_read(max77843->regmap,
   MAX77843_SYS_REG_PMICID, &reg_data);
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to read PMIC ID\n");
  goto err_pmic_id;
 }
 dev_info(&i2c->dev, "device ID: 0x%x\n", reg_data);

 ret = max77843_chg_init(max77843);
 if (ret) {
  dev_err(&i2c->dev, "Failed to init Charger\n");
  goto err_pmic_id;
 }

 ret = regmap_update_bits(max77843->regmap,
     MAX77843_SYS_REG_INTSRCMASK,
     MAX77843_INTSRC_MASK_MASK,
     (unsigned int)~MAX77843_INTSRC_MASK_MASK);
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to unmask interrupt source\n");
  goto err_pmic_id;
 }

 ret = mfd_add_devices(max77843->dev, -1, max77843_devs,
         ARRAY_SIZE(max77843_devs), ((void*)0), 0, ((void*)0));
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to add mfd device\n");
  goto err_pmic_id;
 }

 device_init_wakeup(max77843->dev, 1);

 return 0;

err_pmic_id:
 regmap_del_irq_chip(max77843->irq, max77843->irq_data_topsys);

 return ret;
}
