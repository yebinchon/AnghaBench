
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int * msix_entries; int pdev; } ;


 int kfree (int *) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void fm10k_reset_msix_capability(struct fm10k_intfc *interface)
{
 pci_disable_msix(interface->pdev);
 kfree(interface->msix_entries);
 interface->msix_entries = ((void*)0);
}
