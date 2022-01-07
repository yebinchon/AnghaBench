
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2 {int flags; int pdev; } ;


 int BNX2_FLAG_ONE_SHOT_MSI ;
 int BNX2_FLAG_USING_MSI ;
 int BNX2_FLAG_USING_MSIX ;
 int BNX2_FLAG_USING_MSI_OR_MSIX ;
 int __bnx2_free_irq (struct bnx2*) ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void
bnx2_free_irq(struct bnx2 *bp)
{

 __bnx2_free_irq(bp);
 if (bp->flags & BNX2_FLAG_USING_MSI)
  pci_disable_msi(bp->pdev);
 else if (bp->flags & BNX2_FLAG_USING_MSIX)
  pci_disable_msix(bp->pdev);

 bp->flags &= ~(BNX2_FLAG_USING_MSI_OR_MSIX | BNX2_FLAG_ONE_SHOT_MSI);
}
