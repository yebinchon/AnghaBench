
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; } ;
struct as3722 {unsigned long irq_flags; int * dev; int irq_data; scalar_t__ en_ac_ok_pwr_on; int chip_irq; int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int AS3722_CTRL_SEQU1_AC_OK_PWR_ON ;
 int AS3722_CTRL_SEQU1_REG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int as3722_check_device_id (struct as3722*) ;
 int as3722_configure_pullups (struct as3722*) ;
 int as3722_devs ;
 int as3722_i2c_of_probe (struct i2c_client*,struct as3722*) ;
 int as3722_irq_chip ;
 int as3722_regmap_config ;
 int as3722_update_bits (struct as3722*,int ,int ,int ) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 int device_init_wakeup (int *,int) ;
 struct as3722* devm_kzalloc (int *,int,int ) ;
 int devm_mfd_add_devices (int *,int,int ,int ,int *,int ,int ) ;
 int devm_regmap_add_irq_chip (int *,int ,int ,unsigned long,int,int *,int *) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct as3722*) ;
 int regmap_irq_get_domain (int ) ;

__attribute__((used)) static int as3722_i2c_probe(struct i2c_client *i2c,
   const struct i2c_device_id *id)
{
 struct as3722 *as3722;
 unsigned long irq_flags;
 int ret;
 u8 val = 0;

 as3722 = devm_kzalloc(&i2c->dev, sizeof(struct as3722), GFP_KERNEL);
 if (!as3722)
  return -ENOMEM;

 as3722->dev = &i2c->dev;
 as3722->chip_irq = i2c->irq;
 i2c_set_clientdata(i2c, as3722);

 ret = as3722_i2c_of_probe(i2c, as3722);
 if (ret < 0)
  return ret;

 as3722->regmap = devm_regmap_init_i2c(i2c, &as3722_regmap_config);
 if (IS_ERR(as3722->regmap)) {
  ret = PTR_ERR(as3722->regmap);
  dev_err(&i2c->dev, "regmap init failed: %d\n", ret);
  return ret;
 }

 ret = as3722_check_device_id(as3722);
 if (ret < 0)
  return ret;

 irq_flags = as3722->irq_flags | IRQF_ONESHOT;
 ret = devm_regmap_add_irq_chip(as3722->dev, as3722->regmap,
           as3722->chip_irq,
           irq_flags, -1, &as3722_irq_chip,
           &as3722->irq_data);
 if (ret < 0) {
  dev_err(as3722->dev, "Failed to add regmap irq: %d\n", ret);
  return ret;
 }

 ret = as3722_configure_pullups(as3722);
 if (ret < 0)
  return ret;

 if (as3722->en_ac_ok_pwr_on)
  val = AS3722_CTRL_SEQU1_AC_OK_PWR_ON;
 ret = as3722_update_bits(as3722, AS3722_CTRL_SEQU1_REG,
   AS3722_CTRL_SEQU1_AC_OK_PWR_ON, val);
 if (ret < 0) {
  dev_err(as3722->dev, "CTRLsequ1 update failed: %d\n", ret);
  return ret;
 }

 ret = devm_mfd_add_devices(&i2c->dev, -1, as3722_devs,
       ARRAY_SIZE(as3722_devs), ((void*)0), 0,
       regmap_irq_get_domain(as3722->irq_data));
 if (ret) {
  dev_err(as3722->dev, "Failed to add MFD devices: %d\n", ret);
  return ret;
 }

 device_init_wakeup(as3722->dev, 1);

 dev_dbg(as3722->dev, "AS3722 core driver initialized successfully\n");
 return 0;
}
