
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int flags; int * irq_tbl; int pdev; } ;


 int BNXT_FLAG_USING_MSIX ;
 int kfree (int *) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void bnxt_clear_int_mode(struct bnxt *bp)
{
 if (bp->flags & BNXT_FLAG_USING_MSIX)
  pci_disable_msix(bp->pdev);

 kfree(bp->irq_tbl);
 bp->irq_tbl = ((void*)0);
 bp->flags &= ~BNXT_FLAG_USING_MSIX;
}
