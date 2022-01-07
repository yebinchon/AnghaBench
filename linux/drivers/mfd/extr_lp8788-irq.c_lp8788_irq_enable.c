
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788_irq_data {int* enabled; } ;
struct irq_data {size_t hwirq; } ;


 struct lp8788_irq_data* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void lp8788_irq_enable(struct irq_data *data)
{
 struct lp8788_irq_data *irqd = irq_data_get_irq_chip_data(data);

 irqd->enabled[data->hwirq] = 1;
}
