
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct adapter {int dummy; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 scalar_t__ pci_channel_io_perm_failure ;
 struct adapter* pci_get_drvdata (struct pci_dev*) ;
 int t3_adapter_error (struct adapter*,int ,int ) ;

__attribute__((used)) static pci_ers_result_t t3_io_error_detected(struct pci_dev *pdev,
          pci_channel_state_t state)
{
 struct adapter *adapter = pci_get_drvdata(pdev);

 if (state == pci_channel_io_perm_failure)
  return PCI_ERS_RESULT_DISCONNECT;

 t3_adapter_error(adapter, 0, 0);


 return PCI_ERS_RESULT_NEED_RESET;
}
