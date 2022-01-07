
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {size_t hwirq; } ;
struct TYPE_2__ {int offs; int enable; } ;


 TYPE_1__* pm860x_irqs ;

__attribute__((used)) static void pm860x_irq_enable(struct irq_data *data)
{
 pm860x_irqs[data->hwirq].enable = pm860x_irqs[data->hwirq].offs;
}
