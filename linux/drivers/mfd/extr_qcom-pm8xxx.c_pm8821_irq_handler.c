
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_irq_chip {int regmap; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 unsigned int BIT (int ) ;
 unsigned int GENMASK (int,int) ;
 int PM8821_SSBI_REG_ADDR_IRQ_MASTER0 ;
 int PM8821_SSBI_REG_ADDR_IRQ_MASTER1 ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct pm_irq_chip* irq_desc_get_handler_data (struct irq_desc*) ;
 int pm8821_irq_master_handler (struct pm_irq_chip*,int,unsigned int) ;
 int pr_err (char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static void pm8821_irq_handler(struct irq_desc *desc)
{
 struct pm_irq_chip *chip = irq_desc_get_handler_data(desc);
 struct irq_chip *irq_chip = irq_desc_get_chip(desc);
 unsigned int master;
 int ret;

 chained_irq_enter(irq_chip, desc);
 ret = regmap_read(chip->regmap,
     PM8821_SSBI_REG_ADDR_IRQ_MASTER0, &master);
 if (ret) {
  pr_err("Failed to read master 0 ret=%d\n", ret);
  goto done;
 }


 if (master & GENMASK(7, 1))
  pm8821_irq_master_handler(chip, 0, master);


 if (!(master & BIT(0)))
  goto done;

 ret = regmap_read(chip->regmap,
     PM8821_SSBI_REG_ADDR_IRQ_MASTER1, &master);
 if (ret) {
  pr_err("Failed to read master 1 ret=%d\n", ret);
  goto done;
 }

 pm8821_irq_master_handler(chip, 1, master);

done:
 chained_irq_exit(irq_chip, desc);
}
