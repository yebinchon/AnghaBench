
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct hnae3_ae_dev {TYPE_1__* ops; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;
struct TYPE_2__ {int (* handle_hw_ras_error ) (struct hnae3_ae_dev*) ;} ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NONE ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,scalar_t__) ;
 scalar_t__ pci_channel_io_perm_failure ;
 struct hnae3_ae_dev* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct hnae3_ae_dev*) ;

__attribute__((used)) static pci_ers_result_t hns3_error_detected(struct pci_dev *pdev,
         pci_channel_state_t state)
{
 struct hnae3_ae_dev *ae_dev = pci_get_drvdata(pdev);
 pci_ers_result_t ret;

 dev_info(&pdev->dev, "PCI error detected, state(=%d)!!\n", state);

 if (state == pci_channel_io_perm_failure)
  return PCI_ERS_RESULT_DISCONNECT;

 if (!ae_dev || !ae_dev->ops) {
  dev_err(&pdev->dev,
   "Can't recover - error happened before device initialized\n");
  return PCI_ERS_RESULT_NONE;
 }

 if (ae_dev->ops->handle_hw_ras_error)
  ret = ae_dev->ops->handle_hw_ras_error(ae_dev);
 else
  return PCI_ERS_RESULT_NONE;

 return ret;
}
