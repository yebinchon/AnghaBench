
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hclgevf_dev {int vector_irq; int vector_status; struct pci_dev* pdev; } ;


 int devm_kfree (int *,int ) ;
 int pci_free_irq_vectors (struct pci_dev*) ;

__attribute__((used)) static void hclgevf_uninit_msi(struct hclgevf_dev *hdev)
{
 struct pci_dev *pdev = hdev->pdev;

 devm_kfree(&pdev->dev, hdev->vector_status);
 devm_kfree(&pdev->dev, hdev->vector_irq);
 pci_free_irq_vectors(pdev);
}
