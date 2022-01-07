
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker {int msix_entries; int pdev; } ;


 int kfree (int ) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void rocker_msix_fini(const struct rocker *rocker)
{
 pci_disable_msix(rocker->pdev);
 kfree(rocker->msix_entries);
}
