
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_irq_data {int dummy; } ;
struct max8997_dev {int dummy; } ;
struct irq_data {size_t hwirq; } ;


 struct max8997_irq_data const* max8997_irqs ;

__attribute__((used)) inline static const struct max8997_irq_data *
irq_to_max8997_irq(struct max8997_dev *max8997, struct irq_data *data)
{
 return &max8997_irqs[data->hwirq];
}
