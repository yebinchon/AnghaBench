
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8998_irq_data {int dummy; } ;
struct max8998_dev {int dummy; } ;
struct irq_data {size_t hwirq; } ;


 struct max8998_irq_data* max8998_irqs ;

__attribute__((used)) static inline struct max8998_irq_data *
irq_to_max8998_irq(struct max8998_dev *max8998, struct irq_data *data)
{
 return &max8998_irqs[data->hwirq];
}
