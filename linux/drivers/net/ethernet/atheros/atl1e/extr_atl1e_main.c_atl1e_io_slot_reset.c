
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct atl1e_adapter {int hw; int netdev; } ;
typedef int pci_ers_result_t ;


 int PCI_D3cold ;
 int PCI_D3hot ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int atl1e_reset_hw (int *) ;
 int netdev_err (int ,char*) ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_enable_wake (struct pci_dev*,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t atl1e_io_slot_reset(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct atl1e_adapter *adapter = netdev_priv(netdev);

 if (pci_enable_device(pdev)) {
  netdev_err(adapter->netdev,
      "Cannot re-enable PCI device after reset\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }
 pci_set_master(pdev);

 pci_enable_wake(pdev, PCI_D3hot, 0);
 pci_enable_wake(pdev, PCI_D3cold, 0);

 atl1e_reset_hw(&adapter->hw);

 return PCI_ERS_RESULT_RECOVERED;
}
