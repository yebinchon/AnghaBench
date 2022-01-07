
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_irq_chip_data {int dummy; } ;
struct regmap {int dummy; } ;
struct irq_domain {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int irq; struct device dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct regmap*) ;




 int MAX77650_CID_BITS (unsigned int) ;
 int MAX77650_REG_CID ;
 int MAX77650_REG_CNFG_GLBL ;
 int MAX77650_SBIA_LPM_DISABLED ;
 int MAX77650_SBIA_LPM_MASK ;
 int PLATFORM_DEVID_NONE ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (struct device*,char*,...) ;
 int devm_mfd_add_devices (struct device*,int ,int ,int ,int *,int ,struct irq_domain*) ;
 int devm_regmap_add_irq_chip (struct device*,struct regmap*,int ,int,int ,int *,struct regmap_irq_chip_data**) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int max77650_cells ;
 int max77650_irq_chip ;
 int max77650_regmap_config ;
 struct irq_domain* regmap_irq_get_domain (struct regmap_irq_chip_data*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static int max77650_i2c_probe(struct i2c_client *i2c)
{
 struct regmap_irq_chip_data *irq_data;
 struct device *dev = &i2c->dev;
 struct irq_domain *domain;
 struct regmap *map;
 unsigned int val;
 int rv, id;

 map = devm_regmap_init_i2c(i2c, &max77650_regmap_config);
 if (IS_ERR(map)) {
  dev_err(dev, "Unable to initialise I2C Regmap\n");
  return PTR_ERR(map);
 }

 rv = regmap_read(map, MAX77650_REG_CID, &val);
 if (rv) {
  dev_err(dev, "Unable to read Chip ID\n");
  return rv;
 }

 id = MAX77650_CID_BITS(val);
 switch (id) {
 case 131:
 case 130:
 case 129:
 case 128:
  break;
 default:
  dev_err(dev, "Chip not supported - ID: 0x%02x\n", id);
  return -ENODEV;
 }







 rv = regmap_update_bits(map,
    MAX77650_REG_CNFG_GLBL,
    MAX77650_SBIA_LPM_MASK,
    MAX77650_SBIA_LPM_DISABLED);
 if (rv) {
  dev_err(dev, "Unable to change the power mode\n");
  return rv;
 }

 rv = devm_regmap_add_irq_chip(dev, map, i2c->irq,
          IRQF_ONESHOT | IRQF_SHARED, 0,
          &max77650_irq_chip, &irq_data);
 if (rv) {
  dev_err(dev, "Unable to add Regmap IRQ chip\n");
  return rv;
 }

 domain = regmap_irq_get_domain(irq_data);

 return devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE,
        max77650_cells, ARRAY_SIZE(max77650_cells),
        ((void*)0), 0, domain);
}
