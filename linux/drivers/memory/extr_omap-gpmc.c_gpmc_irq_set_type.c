
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ hwirq; } ;


 int EINVAL ;
 scalar_t__ GPMC_NR_NAND_IRQS ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 int gpmc_irq_edge_config (scalar_t__,int) ;

__attribute__((used)) static int gpmc_irq_set_type(struct irq_data *d, unsigned int trigger)
{

 if (d->hwirq < GPMC_NR_NAND_IRQS)
  return -EINVAL;


 if (trigger == IRQ_TYPE_EDGE_FALLING)
  gpmc_irq_edge_config(d->hwirq, 0);
 else if (trigger == IRQ_TYPE_EDGE_RISING)
  gpmc_irq_edge_config(d->hwirq, 1);
 else
  return -EINVAL;

 return 0;
}
