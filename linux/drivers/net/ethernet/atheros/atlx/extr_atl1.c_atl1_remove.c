
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ hw_addr; int perm_mac_addr; int mac_addr; } ;
struct atl1_adapter {TYPE_1__ hw; } ;


 int ETH_ALEN ;
 scalar_t__ REG_PHY_ENABLE ;
 int atl1_set_mac_addr (TYPE_1__*) ;
 int ether_addr_equal_unaligned (int ,int ) ;
 int free_netdev (struct net_device*) ;
 int iowrite16 (int ,scalar_t__) ;
 int memcpy (int ,int ,int ) ;
 struct atl1_adapter* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,scalar_t__) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void atl1_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct atl1_adapter *adapter;

 if (!netdev)
  return;

 adapter = netdev_priv(netdev);






 if (!ether_addr_equal_unaligned(adapter->hw.mac_addr,
     adapter->hw.perm_mac_addr)) {
  memcpy(adapter->hw.mac_addr, adapter->hw.perm_mac_addr,
   ETH_ALEN);
  atl1_set_mac_addr(&adapter->hw);
 }

 iowrite16(0, adapter->hw.hw_addr + REG_PHY_ENABLE);
 unregister_netdev(netdev);
 pci_iounmap(pdev, adapter->hw.hw_addr);
 pci_release_regions(pdev);
 free_netdev(netdev);
 pci_disable_device(pdev);
}
