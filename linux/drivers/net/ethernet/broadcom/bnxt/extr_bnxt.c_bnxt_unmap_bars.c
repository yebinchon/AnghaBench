
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct bnxt {int * bar0; int * bar1; int * bar2; } ;


 int pci_iounmap (struct pci_dev*,int *) ;

__attribute__((used)) static void bnxt_unmap_bars(struct bnxt *bp, struct pci_dev *pdev)
{
 if (bp->bar2) {
  pci_iounmap(pdev, bp->bar2);
  bp->bar2 = ((void*)0);
 }

 if (bp->bar1) {
  pci_iounmap(pdev, bp->bar1);
  bp->bar1 = ((void*)0);
 }

 if (bp->bar0) {
  pci_iounmap(pdev, bp->bar0);
  bp->bar0 = ((void*)0);
 }
}
