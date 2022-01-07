
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_eq {int num_pages; int * dma_addr; int * virt_addr; int page_size; struct hinic_hwif* hwif; } ;


 int devm_kfree (int *,int *) ;
 int dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static void free_eq_pages(struct hinic_eq *eq)
{
 struct hinic_hwif *hwif = eq->hwif;
 struct pci_dev *pdev = hwif->pdev;
 int pg;

 for (pg = 0; pg < eq->num_pages; pg++)
  dma_free_coherent(&pdev->dev, eq->page_size,
      eq->virt_addr[pg],
      eq->dma_addr[pg]);

 devm_kfree(&pdev->dev, eq->virt_addr);
 devm_kfree(&pdev->dev, eq->dma_addr);
}
