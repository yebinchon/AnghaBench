
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pch_gbe_adapter {int hw; int reset_task; } ;
struct net_device {int dummy; } ;


 int cancel_work_sync (int *) ;
 int free_netdev (struct net_device*) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int pch_gbe_phy_hw_reset (int *) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void pch_gbe_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);

 cancel_work_sync(&adapter->reset_task);
 unregister_netdev(netdev);

 pch_gbe_phy_hw_reset(&adapter->hw);

 free_netdev(netdev);
}
