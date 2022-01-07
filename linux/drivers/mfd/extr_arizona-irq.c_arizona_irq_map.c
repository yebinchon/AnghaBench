
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct arizona* host_data; } ;
struct arizona {int dummy; } ;
typedef int irq_hw_number_t ;


 int arizona_irq_chip ;
 int arizona_irq_lock_class ;
 int arizona_irq_request_class ;
 int handle_simple_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct arizona*) ;
 int irq_set_lockdep_class (unsigned int,int *,int *) ;
 int irq_set_nested_thread (unsigned int,int) ;
 int irq_set_noprobe (unsigned int) ;

__attribute__((used)) static int arizona_irq_map(struct irq_domain *h, unsigned int virq,
         irq_hw_number_t hw)
{
 struct arizona *data = h->host_data;

 irq_set_chip_data(virq, data);
 irq_set_lockdep_class(virq, &arizona_irq_lock_class,
  &arizona_irq_request_class);
 irq_set_chip_and_handler(virq, &arizona_irq_chip, handle_simple_irq);
 irq_set_nested_thread(virq, 1);
 irq_set_noprobe(virq);

 return 0;
}
