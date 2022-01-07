
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int flags; int pdev; } ;


 int AER_ENABLED ;
 int pci_disable_pcie_error_reporting (int ) ;

__attribute__((used)) static void bnx2x_disable_pcie_error_reporting(struct bnx2x *bp)
{
 if (bp->flags & AER_ENABLED) {
  pci_disable_pcie_error_reporting(bp->pdev);
  bp->flags &= ~AER_ENABLED;
 }
}
