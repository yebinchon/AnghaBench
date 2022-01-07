
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct max8907_platform_data {int pm_off; } ;
struct max8907 {struct i2c_client* i2c_rtc; int irqc_chg; struct i2c_client* i2c_gen; int irqc_on_off; int irqc_rtc; TYPE_1__* dev; struct i2c_client* regmap_rtc; struct i2c_client* regmap_gen; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {scalar_t__ of_node; } ;
struct i2c_client {int irq; TYPE_1__ dev; int adapter; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int IRQ_NOAUTOEN ;
 scalar_t__ IS_ERR (struct i2c_client*) ;
 int MAX8907_RTC_I2C_ADDR ;
 int PTR_ERR (struct i2c_client*) ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct max8907_platform_data* dev_get_platdata (TYPE_1__*) ;
 int dev_set_drvdata (TYPE_1__*,struct max8907*) ;
 struct max8907* devm_kzalloc (TYPE_1__*,int,int ) ;
 void* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int enable_irq (int ) ;
 struct i2c_client* i2c_new_dummy_device (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct max8907*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int irq_set_status_flags (int ,int ) ;
 int max8907_cells ;
 int max8907_chg_irq_chip ;
 int max8907_on_off_irq_chip ;
 struct max8907* max8907_pm_off ;
 scalar_t__ max8907_power_off ;
 int max8907_regmap_gen_config ;
 int max8907_regmap_rtc_config ;
 int max8907_rtc_irq_chip ;
 int mfd_add_devices (TYPE_1__*,int,int ,int ,int *,int ,int *) ;
 int of_property_read_bool (scalar_t__,char*) ;
 scalar_t__ pm_power_off ;
 int regmap_add_irq_chip (struct i2c_client*,int ,int,int,int *,int *) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int max8907_i2c_probe(struct i2c_client *i2c,
           const struct i2c_device_id *id)
{
 struct max8907 *max8907;
 int ret;
 struct max8907_platform_data *pdata = dev_get_platdata(&i2c->dev);
 bool pm_off = 0;

 if (pdata)
  pm_off = pdata->pm_off;
 else if (i2c->dev.of_node)
  pm_off = of_property_read_bool(i2c->dev.of_node,
     "maxim,system-power-controller");

 max8907 = devm_kzalloc(&i2c->dev, sizeof(struct max8907), GFP_KERNEL);
 if (!max8907) {
  ret = -ENOMEM;
  goto err_alloc_drvdata;
 }

 max8907->dev = &i2c->dev;
 dev_set_drvdata(max8907->dev, max8907);

 max8907->i2c_gen = i2c;
 i2c_set_clientdata(i2c, max8907);
 max8907->regmap_gen = devm_regmap_init_i2c(i2c,
      &max8907_regmap_gen_config);
 if (IS_ERR(max8907->regmap_gen)) {
  ret = PTR_ERR(max8907->regmap_gen);
  dev_err(&i2c->dev, "gen regmap init failed: %d\n", ret);
  goto err_regmap_gen;
 }

 max8907->i2c_rtc = i2c_new_dummy_device(i2c->adapter, MAX8907_RTC_I2C_ADDR);
 if (IS_ERR(max8907->i2c_rtc)) {
  ret = PTR_ERR(max8907->i2c_rtc);
  goto err_dummy_rtc;
 }
 i2c_set_clientdata(max8907->i2c_rtc, max8907);
 max8907->regmap_rtc = devm_regmap_init_i2c(max8907->i2c_rtc,
      &max8907_regmap_rtc_config);
 if (IS_ERR(max8907->regmap_rtc)) {
  ret = PTR_ERR(max8907->regmap_rtc);
  dev_err(&i2c->dev, "rtc regmap init failed: %d\n", ret);
  goto err_regmap_rtc;
 }

 irq_set_status_flags(max8907->i2c_gen->irq, IRQ_NOAUTOEN);

 ret = regmap_add_irq_chip(max8907->regmap_gen, max8907->i2c_gen->irq,
      IRQF_ONESHOT | IRQF_SHARED, -1,
      &max8907_chg_irq_chip,
      &max8907->irqc_chg);
 if (ret != 0) {
  dev_err(&i2c->dev, "failed to add chg irq chip: %d\n", ret);
  goto err_irqc_chg;
 }
 ret = regmap_add_irq_chip(max8907->regmap_gen, max8907->i2c_gen->irq,
      IRQF_ONESHOT | IRQF_SHARED, -1,
      &max8907_on_off_irq_chip,
      &max8907->irqc_on_off);
 if (ret != 0) {
  dev_err(&i2c->dev, "failed to add on off irq chip: %d\n", ret);
  goto err_irqc_on_off;
 }
 ret = regmap_add_irq_chip(max8907->regmap_rtc, max8907->i2c_gen->irq,
      IRQF_ONESHOT | IRQF_SHARED, -1,
      &max8907_rtc_irq_chip,
      &max8907->irqc_rtc);
 if (ret != 0) {
  dev_err(&i2c->dev, "failed to add rtc irq chip: %d\n", ret);
  goto err_irqc_rtc;
 }

 enable_irq(max8907->i2c_gen->irq);

 ret = mfd_add_devices(max8907->dev, -1, max8907_cells,
         ARRAY_SIZE(max8907_cells), ((void*)0), 0, ((void*)0));
 if (ret != 0) {
  dev_err(&i2c->dev, "failed to add MFD devices %d\n", ret);
  goto err_add_devices;
 }

 if (pm_off && !pm_power_off) {
  max8907_pm_off = max8907;
  pm_power_off = max8907_power_off;
 }

 return 0;

err_add_devices:
 regmap_del_irq_chip(max8907->i2c_gen->irq, max8907->irqc_rtc);
err_irqc_rtc:
 regmap_del_irq_chip(max8907->i2c_gen->irq, max8907->irqc_on_off);
err_irqc_on_off:
 regmap_del_irq_chip(max8907->i2c_gen->irq, max8907->irqc_chg);
err_irqc_chg:
err_regmap_rtc:
 i2c_unregister_device(max8907->i2c_rtc);
err_dummy_rtc:
err_regmap_gen:
err_alloc_drvdata:
 return ret;
}
