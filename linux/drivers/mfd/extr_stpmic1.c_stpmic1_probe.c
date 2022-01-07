
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stpmic1 {scalar_t__ irq; int irq_data; int regmap; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int STPMIC1_MAIN_IRQ ;
 int VERSION_SR ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ) ;
 struct stpmic1* devm_kzalloc (struct device*,int,int ) ;
 int devm_of_platform_populate (struct device*) ;
 int devm_regmap_add_irq_chip (struct device*,int ,int,int,int ,int *,int *) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct stpmic1*) ;
 scalar_t__ of_irq_get (struct device_node*,int ) ;
 int regmap_read (int ,int ,int *) ;
 int stpmic1_regmap_config ;
 int stpmic1_regmap_irq_chip ;

__attribute__((used)) static int stpmic1_probe(struct i2c_client *i2c,
    const struct i2c_device_id *id)
{
 struct stpmic1 *ddata;
 struct device *dev = &i2c->dev;
 int ret;
 struct device_node *np = dev->of_node;
 u32 reg;

 ddata = devm_kzalloc(dev, sizeof(struct stpmic1), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 i2c_set_clientdata(i2c, ddata);
 ddata->dev = dev;

 ddata->regmap = devm_regmap_init_i2c(i2c, &stpmic1_regmap_config);
 if (IS_ERR(ddata->regmap))
  return PTR_ERR(ddata->regmap);

 ddata->irq = of_irq_get(np, STPMIC1_MAIN_IRQ);
 if (ddata->irq < 0) {
  dev_err(dev, "Failed to get main IRQ: %d\n", ddata->irq);
  return ddata->irq;
 }

 ret = regmap_read(ddata->regmap, VERSION_SR, &reg);
 if (ret) {
  dev_err(dev, "Unable to read PMIC version\n");
  return ret;
 }
 dev_info(dev, "PMIC Chip Version: 0x%x\n", reg);


 ret = devm_regmap_add_irq_chip(dev, ddata->regmap, ddata->irq,
           IRQF_ONESHOT | IRQF_SHARED,
           0, &stpmic1_regmap_irq_chip,
           &ddata->irq_data);
 if (ret) {
  dev_err(dev, "IRQ Chip registration failed: %d\n", ret);
  return ret;
 }

 return devm_of_platform_populate(dev);
}
