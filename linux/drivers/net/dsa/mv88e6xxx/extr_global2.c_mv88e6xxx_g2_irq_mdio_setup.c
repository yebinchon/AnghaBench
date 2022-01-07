
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int domain; } ;
struct mv88e6xxx_chip {TYPE_2__* info; TYPE_1__ g2_irq; } ;
struct mii_bus {int* irq; } ;
struct TYPE_4__ {int num_internal_phys; int phy_base_addr; } ;


 int irq_dispose_mapping (int) ;
 int irq_find_mapping (int ,int) ;

int mv88e6xxx_g2_irq_mdio_setup(struct mv88e6xxx_chip *chip,
    struct mii_bus *bus)
{
 int phy, irq, err, err_phy;

 for (phy = 0; phy < chip->info->num_internal_phys; phy++) {
  irq = irq_find_mapping(chip->g2_irq.domain, phy);
  if (irq < 0) {
   err = irq;
   goto out;
  }
  bus->irq[chip->info->phy_base_addr + phy] = irq;
 }
 return 0;
out:
 err_phy = phy;

 for (phy = 0; phy < err_phy; phy++)
  irq_dispose_mapping(bus->irq[phy]);

 return err;
}
