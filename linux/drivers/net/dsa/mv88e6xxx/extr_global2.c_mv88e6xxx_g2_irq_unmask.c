
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int masked; } ;
struct mv88e6xxx_chip {TYPE_1__ g2_irq; } ;
struct irq_data {unsigned int hwirq; } ;


 struct mv88e6xxx_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void mv88e6xxx_g2_irq_unmask(struct irq_data *d)
{
 struct mv88e6xxx_chip *chip = irq_data_get_irq_chip_data(d);
 unsigned int n = d->hwirq;

 chip->g2_irq.masked &= ~(1 << n);
}
