
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct adapter {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 struct adapter* pci_get_drvdata (struct pci_dev*) ;
 int t3_reenable_adapter (struct adapter*) ;

__attribute__((used)) static pci_ers_result_t t3_io_slot_reset(struct pci_dev *pdev)
{
 struct adapter *adapter = pci_get_drvdata(pdev);

 if (!t3_reenable_adapter(adapter))
  return PCI_ERS_RESULT_RECOVERED;

 return PCI_ERS_RESULT_DISCONNECT;
}
