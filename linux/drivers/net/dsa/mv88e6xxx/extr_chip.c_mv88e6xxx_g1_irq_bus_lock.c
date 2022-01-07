
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;
struct irq_data {int dummy; } ;


 struct mv88e6xxx_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static void mv88e6xxx_g1_irq_bus_lock(struct irq_data *d)
{
 struct mv88e6xxx_chip *chip = irq_data_get_irq_chip_data(d);

 mv88e6xxx_reg_lock(chip);
}
