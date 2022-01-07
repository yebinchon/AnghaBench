
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct pm80x_chip {int irq_data; int regmap_irq_chip; int irq; struct regmap* regmap; int dev; } ;


 int EINVAL ;
 unsigned long IRQF_ONESHOT ;
 int PM800_STATUS0_INT_MASK ;
 int PM805_INT_STATUS0 ;
 int PM805_STATUS0_INT_CLEAR ;
 int PM805_STATUS0_INV_INT ;
 int dev_err (int ,char*) ;
 int regmap_add_irq_chip (struct regmap*,int ,unsigned long,int,int ,int *) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int device_irq_init_805(struct pm80x_chip *chip)
{
 struct regmap *map = chip->regmap;
 unsigned long flags = IRQF_ONESHOT;
 int data, mask, ret = -EINVAL;

 if (!map || !chip->irq) {
  dev_err(chip->dev, "incorrect parameters\n");
  return -EINVAL;
 }





 mask =
     PM805_STATUS0_INT_CLEAR | PM805_STATUS0_INV_INT |
     PM800_STATUS0_INT_MASK;

 data = PM805_STATUS0_INT_CLEAR;
 ret = regmap_update_bits(map, PM805_INT_STATUS0, mask, data);




 usleep_range(1000, 3000);

 if (ret < 0)
  goto out;

 ret =
     regmap_add_irq_chip(chip->regmap, chip->irq, flags, -1,
    chip->regmap_irq_chip, &chip->irq_data);

out:
 return ret;
}
