
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_hardware_context {int * pci_base0; } ;


 int iounmap (int *) ;

__attribute__((used)) static void qlcnic_cleanup_pci_map(struct qlcnic_hardware_context *ahw)
{
 if (ahw->pci_base0 != ((void*)0))
  iounmap(ahw->pci_base0);
}
