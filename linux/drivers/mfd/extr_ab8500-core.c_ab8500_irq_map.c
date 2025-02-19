
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct ab8500* host_data; } ;
struct ab8500 {int dummy; } ;
typedef int irq_hw_number_t ;


 int EINVAL ;
 int ab8500_irq_chip ;
 int handle_simple_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct ab8500*) ;
 int irq_set_nested_thread (unsigned int,int) ;
 int irq_set_noprobe (unsigned int) ;

__attribute__((used)) static int ab8500_irq_map(struct irq_domain *d, unsigned int virq,
    irq_hw_number_t hwirq)
{
 struct ab8500 *ab8500 = d->host_data;

 if (!ab8500)
  return -EINVAL;

 irq_set_chip_data(virq, ab8500);
 irq_set_chip_and_handler(virq, &ab8500_irq_chip,
    handle_simple_irq);
 irq_set_nested_thread(virq, 1);
 irq_set_noprobe(virq);

 return 0;
}
