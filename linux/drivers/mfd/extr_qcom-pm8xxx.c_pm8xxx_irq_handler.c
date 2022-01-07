
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_irq_chip {int num_masters; int regmap; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 int SSBI_REG_ADDR_IRQ_ROOT ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct pm_irq_chip* irq_desc_get_handler_data (struct irq_desc*) ;
 int pm8xxx_irq_master_handler (struct pm_irq_chip*,int) ;
 int pr_err (char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static void pm8xxx_irq_handler(struct irq_desc *desc)
{
 struct pm_irq_chip *chip = irq_desc_get_handler_data(desc);
 struct irq_chip *irq_chip = irq_desc_get_chip(desc);
 unsigned int root;
 int i, ret, masters = 0;

 chained_irq_enter(irq_chip, desc);

 ret = regmap_read(chip->regmap, SSBI_REG_ADDR_IRQ_ROOT, &root);
 if (ret) {
  pr_err("Can't read root status ret=%d\n", ret);
  return;
 }


 masters = root >> 1;


 for (i = 0; i < chip->num_masters; i++)
  if (masters & (1 << i))
   pm8xxx_irq_master_handler(chip, i);

 chained_irq_exit(irq_chip, desc);
}
