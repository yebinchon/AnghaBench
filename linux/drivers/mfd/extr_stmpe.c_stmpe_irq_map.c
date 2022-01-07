
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmpe {TYPE_1__* variant; } ;
struct irq_domain {struct stmpe* host_data; } ;
struct irq_chip {int dummy; } ;
typedef int irq_hw_number_t ;
struct TYPE_2__ {scalar_t__ id_val; } ;


 scalar_t__ STMPE801_ID ;
 int handle_edge_irq ;
 int irq_set_chip_and_handler (unsigned int,struct irq_chip*,int ) ;
 int irq_set_chip_data (unsigned int,struct stmpe*) ;
 int irq_set_nested_thread (unsigned int,int) ;
 int irq_set_noprobe (unsigned int) ;
 struct irq_chip stmpe_irq_chip ;

__attribute__((used)) static int stmpe_irq_map(struct irq_domain *d, unsigned int virq,
                                irq_hw_number_t hwirq)
{
 struct stmpe *stmpe = d->host_data;
 struct irq_chip *chip = ((void*)0);

 if (stmpe->variant->id_val != STMPE801_ID)
  chip = &stmpe_irq_chip;

 irq_set_chip_data(virq, stmpe);
 irq_set_chip_and_handler(virq, chip, handle_edge_irq);
 irq_set_nested_thread(virq, 1);
 irq_set_noprobe(virq);

 return 0;
}
