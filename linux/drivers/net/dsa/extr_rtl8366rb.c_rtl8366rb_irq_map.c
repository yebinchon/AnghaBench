
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int host_data; } ;
typedef int irq_hw_number_t ;


 int handle_simple_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int ) ;
 int irq_set_nested_thread (unsigned int,int) ;
 int irq_set_noprobe (unsigned int) ;
 int rtl8366rb_irq_chip ;

__attribute__((used)) static int rtl8366rb_irq_map(struct irq_domain *domain, unsigned int irq,
        irq_hw_number_t hwirq)
{
 irq_set_chip_data(irq, domain->host_data);
 irq_set_chip_and_handler(irq, &rtl8366rb_irq_chip, handle_simple_irq);
 irq_set_nested_thread(irq, 1);
 irq_set_noprobe(irq);

 return 0;
}
