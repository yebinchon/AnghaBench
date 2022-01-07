
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct e1000_hw {scalar_t__ mac_type; scalar_t__ flash_address; scalar_t__ hw_addr; scalar_t__ ce4100_gbe_mdio_base_virt; } ;
struct e1000_adapter {int flags; int bars; int rx_ring; int tx_ring; struct e1000_hw hw; } ;


 int __E1000_DISABLED ;
 scalar_t__ e1000_ce4100 ;
 int e1000_down_and_stop (struct e1000_adapter*) ;
 int e1000_phy_hw_reset (struct e1000_hw*) ;
 int e1000_release_manageability (struct e1000_adapter*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (scalar_t__) ;
 int kfree (int ) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_selected_regions (struct pci_dev*,int ) ;
 int test_and_set_bit (int ,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void e1000_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 bool disable_dev;

 e1000_down_and_stop(adapter);
 e1000_release_manageability(adapter);

 unregister_netdev(netdev);

 e1000_phy_hw_reset(hw);

 kfree(adapter->tx_ring);
 kfree(adapter->rx_ring);

 if (hw->mac_type == e1000_ce4100)
  iounmap(hw->ce4100_gbe_mdio_base_virt);
 iounmap(hw->hw_addr);
 if (hw->flash_address)
  iounmap(hw->flash_address);
 pci_release_selected_regions(pdev, adapter->bars);

 disable_dev = !test_and_set_bit(__E1000_DISABLED, &adapter->flags);
 free_netdev(netdev);

 if (disable_dev)
  pci_disable_device(pdev);
}
