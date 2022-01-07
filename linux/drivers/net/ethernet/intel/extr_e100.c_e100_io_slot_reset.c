
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; } ;
struct nic {int dummy; } ;
struct net_device {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 scalar_t__ PCI_FUNC (int ) ;
 int e100_hw_reset (struct nic*) ;
 int e100_phy_init (struct nic*) ;
 struct nic* netdev_priv (struct net_device*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pr_err (char*) ;

__attribute__((used)) static pci_ers_result_t e100_io_slot_reset(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct nic *nic = netdev_priv(netdev);

 if (pci_enable_device(pdev)) {
  pr_err("Cannot re-enable PCI device after reset\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }
 pci_set_master(pdev);


 if (0 != PCI_FUNC(pdev->devfn))
  return PCI_ERS_RESULT_RECOVERED;
 e100_hw_reset(nic);
 e100_phy_init(nic);

 return PCI_ERS_RESULT_RECOVERED;
}
