
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_wq {int shadow_wqe; int shadow_idx; struct hinic_hwif* hwif; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;


 int devm_kfree (int *,int ) ;

__attribute__((used)) static void free_wqes_shadow(struct hinic_wq *wq)
{
 struct hinic_hwif *hwif = wq->hwif;
 struct pci_dev *pdev = hwif->pdev;

 devm_kfree(&pdev->dev, wq->shadow_idx);
 devm_kfree(&pdev->dev, wq->shadow_wqe);
}
