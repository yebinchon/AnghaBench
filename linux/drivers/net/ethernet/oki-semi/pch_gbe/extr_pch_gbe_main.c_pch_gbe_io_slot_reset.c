
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pch_gbe_hw {int dummy; } ;
struct pch_gbe_adapter {struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_D0 ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int netdev_err (struct net_device*,char*) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int pch_gbe_mac_set_wol_event (struct pch_gbe_hw*,int ) ;
 int pch_gbe_phy_power_up (struct pch_gbe_hw*) ;
 int pch_gbe_reset (struct pch_gbe_adapter*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_enable_wake (struct pci_dev*,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t pch_gbe_io_slot_reset(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);
 struct pch_gbe_hw *hw = &adapter->hw;

 if (pci_enable_device(pdev)) {
  netdev_err(netdev, "Cannot re-enable PCI device after reset\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }
 pci_set_master(pdev);
 pci_enable_wake(pdev, PCI_D0, 0);
 pch_gbe_phy_power_up(hw);
 pch_gbe_reset(adapter);

 pch_gbe_mac_set_wol_event(hw, 0);

 return PCI_ERS_RESULT_RECOVERED;
}
