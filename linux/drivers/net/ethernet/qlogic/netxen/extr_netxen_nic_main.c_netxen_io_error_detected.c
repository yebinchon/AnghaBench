
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct netxen_adapter {int dummy; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int PCI_ERS_RESULT_RECOVERED ;
 int netxen_nic_detach_func (struct netxen_adapter*) ;
 scalar_t__ nx_dev_request_aer (struct netxen_adapter*) ;
 scalar_t__ pci_channel_io_perm_failure ;
 int pci_disable_device (struct pci_dev*) ;
 struct netxen_adapter* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t netxen_io_error_detected(struct pci_dev *pdev,
      pci_channel_state_t state)
{
 struct netxen_adapter *adapter = pci_get_drvdata(pdev);

 if (state == pci_channel_io_perm_failure)
  return PCI_ERS_RESULT_DISCONNECT;

 if (nx_dev_request_aer(adapter))
  return PCI_ERS_RESULT_RECOVERED;

 netxen_nic_detach_func(adapter);

 pci_disable_device(pdev);

 return PCI_ERS_RESULT_NEED_RESET;
}
