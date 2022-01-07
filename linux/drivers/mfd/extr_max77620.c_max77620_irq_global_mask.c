
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77620_chip {int dev; int rmap; } ;


 int MAX77620_GLBLM_MASK ;
 int MAX77620_REG_INTENLBT ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int max77620_irq_global_mask(void *irq_drv_data)
{
 struct max77620_chip *chip = irq_drv_data;
 int ret;

 ret = regmap_update_bits(chip->rmap, MAX77620_REG_INTENLBT,
     MAX77620_GLBLM_MASK, MAX77620_GLBLM_MASK);
 if (ret < 0)
  dev_err(chip->dev, "Failed to set GLBLM: %d\n", ret);

 return ret;
}
