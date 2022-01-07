
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_dev {int dummy; } ;
struct irq_domain {struct max8997_dev* host_data; } ;
typedef int irq_hw_number_t ;


 int handle_edge_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct max8997_dev*) ;
 int irq_set_nested_thread (unsigned int,int) ;
 int irq_set_noprobe (unsigned int) ;
 int max8997_irq_chip ;

__attribute__((used)) static int max8997_irq_domain_map(struct irq_domain *d, unsigned int irq,
     irq_hw_number_t hw)
{
 struct max8997_dev *max8997 = d->host_data;

 irq_set_chip_data(irq, max8997);
 irq_set_chip_and_handler(irq, &max8997_irq_chip, handle_edge_irq);
 irq_set_nested_thread(irq, 1);
 irq_set_noprobe(irq);

 return 0;
}
