
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int masked; } ;
struct mv88e6xxx_chip {int dev; TYPE_1__ g2_irq; } ;
struct irq_data {int dummy; } ;


 int dev_err (int ,char*) ;
 struct mv88e6xxx_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mv88e6xxx_g2_int_mask (struct mv88e6xxx_chip*,int ) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static void mv88e6xxx_g2_irq_bus_sync_unlock(struct irq_data *d)
{
 struct mv88e6xxx_chip *chip = irq_data_get_irq_chip_data(d);
 int err;

 err = mv88e6xxx_g2_int_mask(chip, ~chip->g2_irq.masked);
 if (err)
  dev_err(chip->dev, "failed to mask interrupts\n");

 mv88e6xxx_reg_unlock(chip);
}
