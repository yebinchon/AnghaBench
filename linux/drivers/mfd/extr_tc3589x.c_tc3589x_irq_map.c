
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc3589x {int dummy; } ;
struct irq_domain {struct tc3589x* host_data; } ;
typedef int irq_hw_number_t ;


 int dummy_irq_chip ;
 int handle_edge_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct tc3589x*) ;
 int irq_set_nested_thread (unsigned int,int) ;
 int irq_set_noprobe (unsigned int) ;

__attribute__((used)) static int tc3589x_irq_map(struct irq_domain *d, unsigned int virq,
    irq_hw_number_t hwirq)
{
 struct tc3589x *tc3589x = d->host_data;

 irq_set_chip_data(virq, tc3589x);
 irq_set_chip_and_handler(virq, &dummy_irq_chip,
    handle_edge_irq);
 irq_set_nested_thread(virq, 1);
 irq_set_noprobe(virq);

 return 0;
}
