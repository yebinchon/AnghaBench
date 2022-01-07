
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int gpmc_irq_endis (int ,int) ;

__attribute__((used)) static void gpmc_irq_unmask(struct irq_data *d)
{
 gpmc_irq_endis(d->hwirq, 1);
}
