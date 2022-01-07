
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chip; } ;
struct mv88e6xxx_chip {TYPE_1__ g2_irq; } ;
struct irq_domain {struct mv88e6xxx_chip* host_data; } ;
typedef int irq_hw_number_t ;


 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct mv88e6xxx_chip*) ;
 int irq_set_noprobe (unsigned int) ;

__attribute__((used)) static int mv88e6xxx_g2_irq_domain_map(struct irq_domain *d,
           unsigned int irq,
           irq_hw_number_t hwirq)
{
 struct mv88e6xxx_chip *chip = d->host_data;

 irq_set_chip_data(irq, d->host_data);
 irq_set_chip_and_handler(irq, &chip->g2_irq.chip, handle_level_irq);
 irq_set_noprobe(irq);

 return 0;
}
