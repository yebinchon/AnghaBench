
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_wqs {int num_pages; int free_blocks; struct hinic_hwif* hwif; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;


 int devm_kfree (int *,int ) ;
 int free_page_arrays (struct hinic_wqs*) ;
 int wqs_free_page (struct hinic_wqs*,int) ;

void hinic_wqs_free(struct hinic_wqs *wqs)
{
 struct hinic_hwif *hwif = wqs->hwif;
 struct pci_dev *pdev = hwif->pdev;
 int page_idx;

 devm_kfree(&pdev->dev, wqs->free_blocks);

 for (page_idx = 0; page_idx < wqs->num_pages; page_idx++)
  wqs_free_page(wqs, page_idx);

 free_page_arrays(wqs);
}
