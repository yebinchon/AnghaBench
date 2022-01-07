
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
typedef int pci_ers_result_t ;
typedef enum pci_channel_state { ____Placeholder_pci_channel_state } pci_channel_state ;


 int PCI_ERS_RESULT_CAN_RECOVER ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int dev_err (int *,char*) ;
 int pci_channel_io_frozen ;
 int pci_channel_io_perm_failure ;

__attribute__((used)) static pci_ers_result_t ngene_error_detected(struct pci_dev *dev,
          enum pci_channel_state state)
{
 dev_err(&dev->dev, "PCI error\n");
 if (state == pci_channel_io_perm_failure)
  return PCI_ERS_RESULT_DISCONNECT;
 if (state == pci_channel_io_frozen)
  return PCI_ERS_RESULT_NEED_RESET;
 return PCI_ERS_RESULT_CAN_RECOVER;
}
