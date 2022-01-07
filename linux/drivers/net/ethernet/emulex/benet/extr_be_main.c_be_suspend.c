
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct be_adapter {int dummy; } ;
typedef int pm_message_t ;


 int be_cancel_err_detection (struct be_adapter*) ;
 int be_cleanup (struct be_adapter*) ;
 int be_intr_set (struct be_adapter*,int) ;
 int pci_choose_state (struct pci_dev*,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct be_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;

__attribute__((used)) static int be_suspend(struct pci_dev *pdev, pm_message_t state)
{
 struct be_adapter *adapter = pci_get_drvdata(pdev);

 be_intr_set(adapter, 0);
 be_cancel_err_detection(adapter);

 be_cleanup(adapter);

 pci_save_state(pdev);
 pci_disable_device(pdev);
 pci_set_power_state(pdev, pci_choose_state(pdev, state));
 return 0;
}
