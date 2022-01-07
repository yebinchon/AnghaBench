
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain_data {int irqenable; } ;
struct irq_data {int dummy; } ;


 int BIT (int ) ;
 struct irq_domain_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static void lan78xx_irq_unmask(struct irq_data *irqd)
{
 struct irq_domain_data *data = irq_data_get_irq_chip_data(irqd);

 data->irqenable |= BIT(irqd_to_hwirq(irqd));
}
