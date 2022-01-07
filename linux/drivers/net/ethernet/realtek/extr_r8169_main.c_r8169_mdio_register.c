
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int phydev; struct pci_dev* pci_dev; } ;
struct pci_dev {int dev; } ;
struct mii_bus {char* name; int write; int read; int id; int * irq; int * parent; struct rtl8169_private* priv; } ;


 int ENODEV ;
 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 int PHY_IGNORE_INTERRUPT ;
 struct mii_bus* devm_mdiobus_alloc (int *) ;
 int mdiobus_get_phy (struct mii_bus*,int ) ;
 int mdiobus_register (struct mii_bus*) ;
 int mdiobus_unregister (struct mii_bus*) ;
 int pci_dev_id (struct pci_dev*) ;
 int phy_suspend (int ) ;
 int r8169_mdio_read_reg ;
 int r8169_mdio_write_reg ;
 int snprintf (int ,int ,char*,int) ;

__attribute__((used)) static int r8169_mdio_register(struct rtl8169_private *tp)
{
 struct pci_dev *pdev = tp->pci_dev;
 struct mii_bus *new_bus;
 int ret;

 new_bus = devm_mdiobus_alloc(&pdev->dev);
 if (!new_bus)
  return -ENOMEM;

 new_bus->name = "r8169";
 new_bus->priv = tp;
 new_bus->parent = &pdev->dev;
 new_bus->irq[0] = PHY_IGNORE_INTERRUPT;
 snprintf(new_bus->id, MII_BUS_ID_SIZE, "r8169-%x", pci_dev_id(pdev));

 new_bus->read = r8169_mdio_read_reg;
 new_bus->write = r8169_mdio_write_reg;

 ret = mdiobus_register(new_bus);
 if (ret)
  return ret;

 tp->phydev = mdiobus_get_phy(new_bus, 0);
 if (!tp->phydev) {
  mdiobus_unregister(new_bus);
  return -ENODEV;
 }


 phy_suspend(tp->phydev);

 return 0;
}
