
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int flags; int pdev; } ;


 int USING_MSIX_FLAG ;
 int USING_MSI_FLAG ;
 int USING_SINGLE_MSIX_FLAG ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static inline void bnx2x_disable_msi(struct bnx2x *bp)
{
 if (bp->flags & USING_MSIX_FLAG) {
  pci_disable_msix(bp->pdev);
  bp->flags &= ~(USING_MSIX_FLAG | USING_SINGLE_MSIX_FLAG);
 } else if (bp->flags & USING_MSI_FLAG) {
  pci_disable_msi(bp->pdev);
  bp->flags &= ~USING_MSI_FLAG;
 }
}
