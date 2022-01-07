
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_wqs {int page_paddr; int page_vaddr; int shadow_page_vaddr; struct hinic_hwif* hwif; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;


 int devm_kfree (int *,int ) ;

__attribute__((used)) static void free_page_arrays(struct hinic_wqs *wqs)
{
 struct hinic_hwif *hwif = wqs->hwif;
 struct pci_dev *pdev = hwif->pdev;

 devm_kfree(&pdev->dev, wqs->shadow_page_vaddr);
 devm_kfree(&pdev->dev, wqs->page_vaddr);
 devm_kfree(&pdev->dev, wqs->page_paddr);
}
