
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct be_adapter {int dummy; } ;


 int ERR_DETECTION_DELAY ;
 int be_resume (struct be_adapter*) ;
 int be_schedule_err_detection (struct be_adapter*,int ) ;
 int pci_enable_device (struct pci_dev*) ;
 struct be_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;

__attribute__((used)) static int be_pci_resume(struct pci_dev *pdev)
{
 struct be_adapter *adapter = pci_get_drvdata(pdev);
 int status = 0;

 status = pci_enable_device(pdev);
 if (status)
  return status;

 pci_restore_state(pdev);

 status = be_resume(adapter);
 if (status)
  return status;

 be_schedule_err_detection(adapter, ERR_DETECTION_DELAY);

 return 0;
}
