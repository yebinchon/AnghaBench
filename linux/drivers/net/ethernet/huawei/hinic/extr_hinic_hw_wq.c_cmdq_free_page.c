
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_cmdq_pages {int shadow_page_vaddr; scalar_t__ page_paddr; int page_vaddr; struct hinic_hwif* hwif; } ;
typedef int dma_addr_t ;


 int CMDQ_PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int vfree (int ) ;

__attribute__((used)) static void cmdq_free_page(struct hinic_cmdq_pages *cmdq_pages)
{
 struct hinic_hwif *hwif = cmdq_pages->hwif;
 struct pci_dev *pdev = hwif->pdev;

 dma_free_coherent(&pdev->dev, CMDQ_PAGE_SIZE,
     cmdq_pages->page_vaddr,
     (dma_addr_t)cmdq_pages->page_paddr);
 vfree(cmdq_pages->shadow_page_vaddr);
}
