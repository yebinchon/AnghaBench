
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;


 int irq_set_chip_and_handler (unsigned int,int *,int *) ;
 int irq_set_chip_data (unsigned int,int *) ;

__attribute__((used)) static void tc3589x_irq_unmap(struct irq_domain *d, unsigned int virq)
{
 irq_set_chip_and_handler(virq, ((void*)0), ((void*)0));
 irq_set_chip_data(virq, ((void*)0));
}
