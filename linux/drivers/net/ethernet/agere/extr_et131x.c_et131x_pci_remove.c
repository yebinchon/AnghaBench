
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int phydev; } ;
struct et131x_adapter {int regs; int mii_bus; int napi; } ;


 int et131x_adapter_memory_free (struct et131x_adapter*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int phy_disconnect (int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void et131x_pci_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct et131x_adapter *adapter = netdev_priv(netdev);

 unregister_netdev(netdev);
 netif_napi_del(&adapter->napi);
 phy_disconnect(netdev->phydev);
 mdiobus_unregister(adapter->mii_bus);
 mdiobus_free(adapter->mii_bus);

 et131x_adapter_memory_free(adapter);
 iounmap(adapter->regs);
 pci_dev_put(pdev);

 free_netdev(netdev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
