
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_irq_chip_data {int dummy; } ;
struct regmap_irq_chip {int name; } ;
struct intel_soc_pmic {int regmap; int dev; } ;


 int dev_err (int ,char*,int,int ,int) ;
 int devm_regmap_add_irq_chip (int ,int ,int,int,int ,struct regmap_irq_chip const*,struct regmap_irq_chip_data**) ;
 int regmap_irq_get_virq (struct regmap_irq_chip_data*,int) ;

__attribute__((used)) static int bxtwc_add_chained_irq_chip(struct intel_soc_pmic *pmic,
    struct regmap_irq_chip_data *pdata,
    int pirq, int irq_flags,
    const struct regmap_irq_chip *chip,
    struct regmap_irq_chip_data **data)
{
 int irq;

 irq = regmap_irq_get_virq(pdata, pirq);
 if (irq < 0) {
  dev_err(pmic->dev,
   "Failed to get parent vIRQ(%d) for chip %s, ret:%d\n",
   pirq, chip->name, irq);
  return irq;
 }

 return devm_regmap_add_irq_chip(pmic->dev, pmic->regmap, irq, irq_flags,
     0, chip, data);
}
