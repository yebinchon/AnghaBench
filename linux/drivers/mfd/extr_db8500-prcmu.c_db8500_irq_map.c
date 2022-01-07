
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int handle_simple_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int prcmu_irq_chip ;

__attribute__((used)) static int db8500_irq_map(struct irq_domain *d, unsigned int virq,
    irq_hw_number_t hwirq)
{
 irq_set_chip_and_handler(virq, &prcmu_irq_chip,
    handle_simple_irq);

 return 0;
}
