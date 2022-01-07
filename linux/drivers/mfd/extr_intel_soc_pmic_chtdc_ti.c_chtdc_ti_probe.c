
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_soc_pmic {int irq_chip_data; int irq; int regmap; } ;
struct device {int dummy; } ;
struct i2c_client {int irq; struct device dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PLATFORM_DEVID_NONE ;
 int PTR_ERR (int ) ;
 int chtdc_ti_dev ;
 int chtdc_ti_irq_chip ;
 int chtdc_ti_regmap_config ;
 struct intel_soc_pmic* devm_kzalloc (struct device*,int,int ) ;
 int devm_mfd_add_devices (struct device*,int ,int ,int ,int *,int ,int ) ;
 int devm_regmap_add_irq_chip (struct device*,int ,int ,int ,int ,int *,int *) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct intel_soc_pmic*) ;
 int regmap_irq_get_domain (int ) ;

__attribute__((used)) static int chtdc_ti_probe(struct i2c_client *i2c)
{
 struct device *dev = &i2c->dev;
 struct intel_soc_pmic *pmic;
 int ret;

 pmic = devm_kzalloc(dev, sizeof(*pmic), GFP_KERNEL);
 if (!pmic)
  return -ENOMEM;

 i2c_set_clientdata(i2c, pmic);

 pmic->regmap = devm_regmap_init_i2c(i2c, &chtdc_ti_regmap_config);
 if (IS_ERR(pmic->regmap))
  return PTR_ERR(pmic->regmap);
 pmic->irq = i2c->irq;

 ret = devm_regmap_add_irq_chip(dev, pmic->regmap, pmic->irq,
           IRQF_ONESHOT, 0,
           &chtdc_ti_irq_chip,
           &pmic->irq_chip_data);
 if (ret)
  return ret;

 return devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE, chtdc_ti_dev,
        ARRAY_SIZE(chtdc_ti_dev), ((void*)0), 0,
        regmap_irq_get_domain(pmic->irq_chip_data));
}
