
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct hnae3_ae_ops {int (* get_reset_level ) (struct hnae3_ae_dev*,scalar_t__*) ;int (* reset_event ) (struct pci_dev*,int *) ;int (* set_default_reset_request ) (struct hnae3_ae_dev*,int) ;} ;
struct hnae3_ae_dev {scalar_t__ hw_err_reset_req; struct hnae3_ae_ops* ops; } ;
typedef int pci_ers_result_t ;
typedef enum hnae3_reset_type { ____Placeholder_hnae3_reset_type } hnae3_reset_type ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NONE ;
 int PCI_ERS_RESULT_RECOVERED ;
 int dev_info (struct device*,char*) ;
 struct hnae3_ae_dev* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct hnae3_ae_dev*,scalar_t__*) ;
 int stub2 (struct hnae3_ae_dev*,int) ;
 int stub3 (struct pci_dev*,int *) ;

__attribute__((used)) static pci_ers_result_t hns3_slot_reset(struct pci_dev *pdev)
{
 struct hnae3_ae_dev *ae_dev = pci_get_drvdata(pdev);
 const struct hnae3_ae_ops *ops;
 enum hnae3_reset_type reset_type;
 struct device *dev = &pdev->dev;

 if (!ae_dev || !ae_dev->ops)
  return PCI_ERS_RESULT_NONE;

 ops = ae_dev->ops;

 if (ops->reset_event && ops->get_reset_level &&
     ops->set_default_reset_request) {
  if (ae_dev->hw_err_reset_req) {
   reset_type = ops->get_reset_level(ae_dev,
      &ae_dev->hw_err_reset_req);
   ops->set_default_reset_request(ae_dev, reset_type);
   dev_info(dev, "requesting reset due to PCI error\n");
   ops->reset_event(pdev, ((void*)0));
  }

  return PCI_ERS_RESULT_RECOVERED;
 }

 return PCI_ERS_RESULT_DISCONNECT;
}
