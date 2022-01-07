
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct mii_bus {struct enetc_mdio_priv* priv; } ;
struct enetc_mdio_priv {TYPE_1__* hw; } ;
struct TYPE_2__ {int port; } ;


 int iounmap (int ) ;
 int mdiobus_unregister (struct mii_bus*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct mii_bus* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;

__attribute__((used)) static void enetc_pci_mdio_remove(struct pci_dev *pdev)
{
 struct mii_bus *bus = pci_get_drvdata(pdev);
 struct enetc_mdio_priv *mdio_priv;

 mdiobus_unregister(bus);
 mdio_priv = bus->priv;
 iounmap(mdio_priv->hw->port);
 pci_release_mem_regions(pdev);
 pci_disable_device(pdev);
}
