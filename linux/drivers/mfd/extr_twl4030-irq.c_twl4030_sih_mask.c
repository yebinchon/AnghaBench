
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sih_agent {int imr_change_pending; scalar_t__ irq_base; int imr; } ;
struct irq_data {scalar_t__ irq; } ;


 int BIT (scalar_t__) ;
 struct sih_agent* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void twl4030_sih_mask(struct irq_data *data)
{
 struct sih_agent *agent = irq_data_get_irq_chip_data(data);

 agent->imr |= BIT(data->irq - agent->irq_base);
 agent->imr_change_pending = 1;
}
