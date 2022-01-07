
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int flags; int pdev; } ;


 int NIU_FLAGS_MSIX ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void niu_ldg_free(struct niu *np)
{
 if (np->flags & NIU_FLAGS_MSIX)
  pci_disable_msix(np->pdev);
}
