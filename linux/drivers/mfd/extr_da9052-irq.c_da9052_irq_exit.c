
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052 {int irq_data; int chip_irq; } ;


 int DA9052_IRQ_ADC_EOM ;
 int da9052_free_irq (struct da9052*,int ,struct da9052*) ;
 int regmap_del_irq_chip (int ,int ) ;

int da9052_irq_exit(struct da9052 *da9052)
{
 da9052_free_irq(da9052, DA9052_IRQ_ADC_EOM, da9052);
 regmap_del_irq_chip(da9052->chip_irq, da9052->irq_data);

 return 0;
}
