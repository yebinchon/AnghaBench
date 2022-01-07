
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int pdev; } ;


 int bnxt_unmap_bars (struct bnxt*,int ) ;
 int pci_disable_device (int ) ;
 scalar_t__ pci_is_enabled (int ) ;
 int pci_release_regions (int ) ;

__attribute__((used)) static void bnxt_cleanup_pci(struct bnxt *bp)
{
 bnxt_unmap_bars(bp, bp->pdev);
 pci_release_regions(bp->pdev);
 if (pci_is_enabled(bp->pdev))
  pci_disable_device(bp->pdev);
}
