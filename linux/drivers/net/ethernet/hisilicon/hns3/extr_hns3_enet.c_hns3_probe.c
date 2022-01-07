
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dev; } ;
struct hnae3_ae_dev {int reset_type; int flag; struct pci_dev* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HNAE3_NONE_RESET ;
 int devm_kfree (int *,struct hnae3_ae_dev*) ;
 struct hnae3_ae_dev* devm_kzalloc (int *,int,int ) ;
 int hnae3_register_ae_dev (struct hnae3_ae_dev*) ;
 int hns3_get_dev_capability (struct pci_dev*,struct hnae3_ae_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct hnae3_ae_dev*) ;

__attribute__((used)) static int hns3_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct hnae3_ae_dev *ae_dev;
 int ret;

 ae_dev = devm_kzalloc(&pdev->dev, sizeof(*ae_dev), GFP_KERNEL);
 if (!ae_dev) {
  ret = -ENOMEM;
  return ret;
 }

 ae_dev->pdev = pdev;
 ae_dev->flag = ent->driver_data;
 ae_dev->reset_type = HNAE3_NONE_RESET;
 hns3_get_dev_capability(pdev, ae_dev);
 pci_set_drvdata(pdev, ae_dev);

 ret = hnae3_register_ae_dev(ae_dev);
 if (ret) {
  devm_kfree(&pdev->dev, ae_dev);
  pci_set_drvdata(pdev, ((void*)0));
 }

 return ret;
}
