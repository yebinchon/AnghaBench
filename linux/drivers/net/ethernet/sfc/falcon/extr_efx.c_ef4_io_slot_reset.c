
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ef4_nic {int net_dev; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int hw ;
 int netif_err (struct ef4_nic*,int ,int ,char*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct ef4_nic* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t ef4_io_slot_reset(struct pci_dev *pdev)
{
 struct ef4_nic *efx = pci_get_drvdata(pdev);
 pci_ers_result_t status = PCI_ERS_RESULT_RECOVERED;

 if (pci_enable_device(pdev)) {
  netif_err(efx, hw, efx->net_dev,
     "Cannot re-enable PCI device after reset.\n");
  status = PCI_ERS_RESULT_DISCONNECT;
 }

 return status;
}
