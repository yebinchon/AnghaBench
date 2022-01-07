
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6397_chip {int regmap; int irq_domain; int dev; } ;


 unsigned int BIT (int) ;
 int dev_err (int ,char*,int) ;
 int handle_nested_irq (int) ;
 int irq_find_mapping (int ,int) ;
 int regmap_read (int ,int,unsigned int*) ;
 int regmap_write (int ,int,unsigned int) ;

__attribute__((used)) static void mt6397_irq_handle_reg(struct mt6397_chip *mt6397, int reg,
      int irqbase)
{
 unsigned int status;
 int i, irq, ret;

 ret = regmap_read(mt6397->regmap, reg, &status);
 if (ret) {
  dev_err(mt6397->dev, "Failed to read irq status: %d\n", ret);
  return;
 }

 for (i = 0; i < 16; i++) {
  if (status & BIT(i)) {
   irq = irq_find_mapping(mt6397->irq_domain, irqbase + i);
   if (irq)
    handle_nested_irq(irq);
  }
 }

 regmap_write(mt6397->regmap, reg, status);
}
