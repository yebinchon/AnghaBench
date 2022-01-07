
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6030_irq {int twl_irq; int irq_chip; } ;
struct irq_domain {struct twl6030_irq* host_data; } ;
typedef int irq_hw_number_t ;


 int handle_simple_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct twl6030_irq*) ;
 int irq_set_nested_thread (unsigned int,int) ;
 int irq_set_noprobe (unsigned int) ;
 int irq_set_parent (unsigned int,int ) ;

__attribute__((used)) static int twl6030_irq_map(struct irq_domain *d, unsigned int virq,
         irq_hw_number_t hwirq)
{
 struct twl6030_irq *pdata = d->host_data;

 irq_set_chip_data(virq, pdata);
 irq_set_chip_and_handler(virq, &pdata->irq_chip, handle_simple_irq);
 irq_set_nested_thread(virq, 1);
 irq_set_parent(virq, pdata->twl_irq);
 irq_set_noprobe(virq);

 return 0;
}
