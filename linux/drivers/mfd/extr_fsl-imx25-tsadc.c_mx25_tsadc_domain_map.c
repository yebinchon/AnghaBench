
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mx25_tsadc {int dummy; } ;
struct irq_domain {struct mx25_tsadc* host_data; } ;
typedef int irq_hw_number_t ;


 int IRQ_NOPROBE ;
 int IRQ_NOREQUEST ;
 int dummy_irq_chip ;
 int handle_level_irq ;
 int irq_modify_status (unsigned int,int ,int ) ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct mx25_tsadc*) ;

__attribute__((used)) static int mx25_tsadc_domain_map(struct irq_domain *d, unsigned int irq,
     irq_hw_number_t hwirq)
{
 struct mx25_tsadc *tsadc = d->host_data;

 irq_set_chip_data(irq, tsadc);
 irq_set_chip_and_handler(irq, &dummy_irq_chip,
     handle_level_irq);
 irq_modify_status(irq, IRQ_NOREQUEST, IRQ_NOPROBE);

 return 0;
}
