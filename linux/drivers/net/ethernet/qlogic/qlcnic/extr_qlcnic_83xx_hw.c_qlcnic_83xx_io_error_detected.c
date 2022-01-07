
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int state; } ;
struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int PCI_ERS_RESULT_RECOVERED ;
 int __QLCNIC_AER ;
 int __QLCNIC_RESETTING ;
 scalar_t__ pci_channel_io_normal ;
 scalar_t__ pci_channel_io_perm_failure ;
 int pci_disable_device (struct pci_dev*) ;
 struct qlcnic_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int qlcnic_83xx_aer_stop_poll_work (struct qlcnic_adapter*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static pci_ers_result_t qlcnic_83xx_io_error_detected(struct pci_dev *pdev,
            pci_channel_state_t state)
{
 struct qlcnic_adapter *adapter = pci_get_drvdata(pdev);

 if (state == pci_channel_io_perm_failure)
  return PCI_ERS_RESULT_DISCONNECT;

 if (state == pci_channel_io_normal)
  return PCI_ERS_RESULT_RECOVERED;

 set_bit(__QLCNIC_AER, &adapter->state);
 set_bit(__QLCNIC_RESETTING, &adapter->state);

 qlcnic_83xx_aer_stop_poll_work(adapter);

 pci_save_state(pdev);
 pci_disable_device(pdev);

 return PCI_ERS_RESULT_NEED_RESET;
}
