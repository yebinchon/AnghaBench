
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct mii_bus {int * irq; } ;
struct TYPE_2__ {int num_internal_phys; } ;


 int irq_dispose_mapping (int ) ;

void mv88e6xxx_g2_irq_mdio_free(struct mv88e6xxx_chip *chip,
    struct mii_bus *bus)
{
 int phy;

 for (phy = 0; phy < chip->info->num_internal_phys; phy++)
  irq_dispose_mapping(bus->irq[phy]);
}
