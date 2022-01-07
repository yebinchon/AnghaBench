
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct igbvf_adapter {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int dev_err (int *,char*) ;
 int igbvf_reset (struct igbvf_adapter*) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ pci_enable_device_mem (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t igbvf_io_slot_reset(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct igbvf_adapter *adapter = netdev_priv(netdev);

 if (pci_enable_device_mem(pdev)) {
  dev_err(&pdev->dev,
   "Cannot re-enable PCI device after reset.\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }
 pci_set_master(pdev);

 igbvf_reset(adapter);

 return PCI_ERS_RESULT_RECOVERED;
}
