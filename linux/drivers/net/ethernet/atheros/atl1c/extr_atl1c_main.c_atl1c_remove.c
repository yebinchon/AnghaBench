
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int hw_addr; int perm_mac_addr; } ;
struct atl1c_adapter {TYPE_1__ hw; } ;


 int atl1c_hw_set_mac_addr (TYPE_1__*,int ) ;
 int atl1c_phy_disable (TYPE_1__*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void atl1c_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct atl1c_adapter *adapter = netdev_priv(netdev);

 unregister_netdev(netdev);

 atl1c_hw_set_mac_addr(&adapter->hw, adapter->hw.perm_mac_addr);
 atl1c_phy_disable(&adapter->hw);

 iounmap(adapter->hw.hw_addr);

 pci_release_regions(pdev);
 pci_disable_device(pdev);
 free_netdev(netdev);
}
