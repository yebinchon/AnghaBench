
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int host_data; } ;
typedef int irq_hw_number_t ;


 int handle_edge_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int ) ;
 int irq_set_nested_thread (unsigned int,int) ;
 int irq_set_noprobe (unsigned int) ;
 int max8925_irq_chip ;

__attribute__((used)) static int max8925_irq_domain_map(struct irq_domain *d, unsigned int virq,
     irq_hw_number_t hw)
{
 irq_set_chip_data(virq, d->host_data);
 irq_set_chip_and_handler(virq, &max8925_irq_chip, handle_edge_irq);
 irq_set_nested_thread(virq, 1);
 irq_set_noprobe(virq);

 return 0;
}
