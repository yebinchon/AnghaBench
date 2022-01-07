
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65910_platform_data {int irq_base; } ;
struct tps65910 {int chip_irq; int dev; int irq_data; int regmap; } ;
struct regmap_irq_chip {int dummy; } ;


 int EINVAL ;
 int IRQF_ONESHOT ;


 int dev_warn (int ,char*,...) ;
 int devm_regmap_add_irq_chip (int ,int ,int,int ,int ,struct regmap_irq_chip*,int *) ;
 int tps65910_chip_id (struct tps65910*) ;
 struct regmap_irq_chip tps65910_irq_chip ;
 struct regmap_irq_chip tps65911_irq_chip ;

__attribute__((used)) static int tps65910_irq_init(struct tps65910 *tps65910, int irq,
      struct tps65910_platform_data *pdata)
{
 int ret;
 static struct regmap_irq_chip *tps6591x_irqs_chip;

 if (!irq) {
  dev_warn(tps65910->dev, "No interrupt support, no core IRQ\n");
  return -EINVAL;
 }

 if (!pdata) {
  dev_warn(tps65910->dev, "No interrupt support, no pdata\n");
  return -EINVAL;
 }

 switch (tps65910_chip_id(tps65910)) {
 case 129:
  tps6591x_irqs_chip = &tps65910_irq_chip;
  break;
 case 128:
  tps6591x_irqs_chip = &tps65911_irq_chip;
  break;
 }

 tps65910->chip_irq = irq;
 ret = devm_regmap_add_irq_chip(tps65910->dev, tps65910->regmap,
           tps65910->chip_irq,
           IRQF_ONESHOT, pdata->irq_base,
           tps6591x_irqs_chip, &tps65910->irq_data);
 if (ret < 0) {
  dev_warn(tps65910->dev, "Failed to add irq_chip %d\n", ret);
  tps65910->chip_irq = 0;
 }
 return ret;
}
