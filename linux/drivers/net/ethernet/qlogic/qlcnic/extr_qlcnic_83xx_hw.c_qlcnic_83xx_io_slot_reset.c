
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int state; } ;
struct pci_dev {int error_state; } ;
typedef int pci_ers_result_t ;


 int PCI_D0 ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int __QLCNIC_AER ;
 int __QLCNIC_RESETTING ;
 int clear_bit (int ,int *) ;
 int pci_channel_io_normal ;
 int pci_enable_device (struct pci_dev*) ;
 struct qlcnic_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int qlcnic_83xx_aer_reset (struct qlcnic_adapter*) ;

__attribute__((used)) static pci_ers_result_t qlcnic_83xx_io_slot_reset(struct pci_dev *pdev)
{
 struct qlcnic_adapter *adapter = pci_get_drvdata(pdev);
 int err = 0;

 pdev->error_state = pci_channel_io_normal;
 err = pci_enable_device(pdev);
 if (err)
  goto disconnect;

 pci_set_power_state(pdev, PCI_D0);
 pci_set_master(pdev);
 pci_restore_state(pdev);

 err = qlcnic_83xx_aer_reset(adapter);
 if (err == 0)
  return PCI_ERS_RESULT_RECOVERED;
disconnect:
 clear_bit(__QLCNIC_AER, &adapter->state);
 clear_bit(__QLCNIC_RESETTING, &adapter->state);
 return PCI_ERS_RESULT_DISCONNECT;
}
