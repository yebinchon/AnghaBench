
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_wqs {int * shadow_page_vaddr; scalar_t__* page_paddr; int * page_vaddr; struct hinic_hwif* hwif; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
typedef int dma_addr_t ;


 int WQS_PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int vfree (int ) ;

__attribute__((used)) static void wqs_free_page(struct hinic_wqs *wqs, int page_idx)
{
 struct hinic_hwif *hwif = wqs->hwif;
 struct pci_dev *pdev = hwif->pdev;

 dma_free_coherent(&pdev->dev, WQS_PAGE_SIZE,
     wqs->page_vaddr[page_idx],
     (dma_addr_t)wqs->page_paddr[page_idx]);
 vfree(wqs->shadow_page_vaddr[page_idx]);
}
