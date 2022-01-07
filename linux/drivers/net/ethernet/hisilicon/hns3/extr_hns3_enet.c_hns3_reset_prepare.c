
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct hnae3_ae_dev {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* flr_prepare ) (struct hnae3_ae_dev*) ;} ;


 int dev_info (int *,char*) ;
 struct hnae3_ae_dev* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct hnae3_ae_dev*) ;

__attribute__((used)) static void hns3_reset_prepare(struct pci_dev *pdev)
{
 struct hnae3_ae_dev *ae_dev = pci_get_drvdata(pdev);

 dev_info(&pdev->dev, "hns3 flr prepare\n");
 if (ae_dev && ae_dev->ops && ae_dev->ops->flr_prepare)
  ae_dev->ops->flr_prepare(ae_dev);
}
