
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ERR_DETECTION_DELAY ;
 int be_resume (struct be_adapter*) ;
 int be_roce_dev_add (struct be_adapter*) ;
 int be_schedule_err_detection (struct be_adapter*,int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 struct be_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;

__attribute__((used)) static void be_eeh_resume(struct pci_dev *pdev)
{
 int status = 0;
 struct be_adapter *adapter = pci_get_drvdata(pdev);

 dev_info(&adapter->pdev->dev, "EEH resume\n");

 pci_save_state(pdev);

 status = be_resume(adapter);
 if (status)
  goto err;

 be_roce_dev_add(adapter);

 be_schedule_err_detection(adapter, ERR_DETECTION_DELAY);
 return;
err:
 dev_err(&adapter->pdev->dev, "EEH resume failed\n");
}
