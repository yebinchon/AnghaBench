
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hnae3_ae_dev {struct hclgevf_dev* priv; struct pci_dev* pdev; } ;
struct hclgevf_dev {struct hnae3_ae_dev* ae_dev; struct pci_dev* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct hclgevf_dev* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static int hclgevf_alloc_hdev(struct hnae3_ae_dev *ae_dev)
{
 struct pci_dev *pdev = ae_dev->pdev;
 struct hclgevf_dev *hdev;

 hdev = devm_kzalloc(&pdev->dev, sizeof(*hdev), GFP_KERNEL);
 if (!hdev)
  return -ENOMEM;

 hdev->pdev = pdev;
 hdev->ae_dev = ae_dev;
 ae_dev->priv = hdev;

 return 0;
}
