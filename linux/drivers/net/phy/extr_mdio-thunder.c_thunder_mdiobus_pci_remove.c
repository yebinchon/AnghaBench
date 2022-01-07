
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunder_mdiobus_nexus {struct cavium_mdiobus** buses; } ;
struct pci_dev {int dummy; } ;
struct cavium_mdiobus {scalar_t__ register_base; int mii_bus; } ;


 int ARRAY_SIZE (struct cavium_mdiobus**) ;
 scalar_t__ SMI_EN ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 int oct_mdio_writeq (int ,scalar_t__) ;
 struct thunder_mdiobus_nexus* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void thunder_mdiobus_pci_remove(struct pci_dev *pdev)
{
 int i;
 struct thunder_mdiobus_nexus *nexus = pci_get_drvdata(pdev);

 for (i = 0; i < ARRAY_SIZE(nexus->buses); i++) {
  struct cavium_mdiobus *bus = nexus->buses[i];

  if (!bus)
   continue;

  mdiobus_unregister(bus->mii_bus);
  mdiobus_free(bus->mii_bus);
  oct_mdio_writeq(0, bus->register_base + SMI_EN);
 }
 pci_set_drvdata(pdev, ((void*)0));
}
