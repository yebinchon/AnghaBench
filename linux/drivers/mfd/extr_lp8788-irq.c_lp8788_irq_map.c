
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788_irq_data {int dummy; } ;
struct irq_domain {struct lp8788_irq_data* host_data; } ;
struct irq_chip {int dummy; } ;
typedef int irq_hw_number_t ;


 int handle_edge_irq ;
 int irq_set_chip_and_handler (unsigned int,struct irq_chip*,int ) ;
 int irq_set_chip_data (unsigned int,struct lp8788_irq_data*) ;
 int irq_set_nested_thread (unsigned int,int) ;
 int irq_set_noprobe (unsigned int) ;
 struct irq_chip lp8788_irq_chip ;

__attribute__((used)) static int lp8788_irq_map(struct irq_domain *d, unsigned int virq,
   irq_hw_number_t hwirq)
{
 struct lp8788_irq_data *irqd = d->host_data;
 struct irq_chip *chip = &lp8788_irq_chip;

 irq_set_chip_data(virq, irqd);
 irq_set_chip_and_handler(virq, chip, handle_edge_irq);
 irq_set_nested_thread(virq, 1);
 irq_set_noprobe(virq);

 return 0;
}
