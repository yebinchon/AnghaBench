
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain_data {int irq_handler; int irqchip; } ;
struct irq_domain {struct irq_domain_data* host_data; } ;
typedef int irq_hw_number_t ;


 int irq_set_chip_and_handler (unsigned int,int ,int ) ;
 int irq_set_chip_data (unsigned int,struct irq_domain_data*) ;
 int irq_set_noprobe (unsigned int) ;

__attribute__((used)) static int irq_map(struct irq_domain *d, unsigned int irq,
     irq_hw_number_t hwirq)
{
 struct irq_domain_data *data = d->host_data;

 irq_set_chip_data(irq, data);
 irq_set_chip_and_handler(irq, data->irqchip, data->irq_handler);
 irq_set_noprobe(irq);

 return 0;
}
