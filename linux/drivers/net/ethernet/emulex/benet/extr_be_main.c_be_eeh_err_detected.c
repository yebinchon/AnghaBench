
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ devfn; } ;
struct be_adapter {TYPE_1__* pdev; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;
struct TYPE_2__ {int dev; } ;


 int BE_ERROR_EEH ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int be_cancel_err_detection (struct be_adapter*) ;
 int be_check_error (struct be_adapter*,int ) ;
 int be_cleanup (struct be_adapter*) ;
 int be_roce_dev_remove (struct be_adapter*) ;
 int be_set_error (struct be_adapter*,int ) ;
 int dev_err (int *,char*) ;
 scalar_t__ pci_channel_io_perm_failure ;
 int pci_disable_device (struct pci_dev*) ;
 struct be_adapter* pci_get_drvdata (struct pci_dev*) ;
 int ssleep (int) ;

__attribute__((used)) static pci_ers_result_t be_eeh_err_detected(struct pci_dev *pdev,
         pci_channel_state_t state)
{
 struct be_adapter *adapter = pci_get_drvdata(pdev);

 dev_err(&adapter->pdev->dev, "EEH error detected\n");

 be_roce_dev_remove(adapter);

 if (!be_check_error(adapter, BE_ERROR_EEH)) {
  be_set_error(adapter, BE_ERROR_EEH);

  be_cancel_err_detection(adapter);

  be_cleanup(adapter);
 }

 if (state == pci_channel_io_perm_failure)
  return PCI_ERS_RESULT_DISCONNECT;

 pci_disable_device(pdev);







 if (pdev->devfn == 0)
  ssleep(30);

 return PCI_ERS_RESULT_NEED_RESET;
}
