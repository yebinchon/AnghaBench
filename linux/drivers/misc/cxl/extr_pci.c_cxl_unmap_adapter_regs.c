
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct cxl {TYPE_1__ dev; TYPE_2__* native; } ;
struct TYPE_4__ {int * p2_mmio; int * p1_mmio; } ;


 int iounmap (int *) ;
 int pci_release_region (int ,int) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static void cxl_unmap_adapter_regs(struct cxl *adapter)
{
 if (adapter->native->p1_mmio) {
  iounmap(adapter->native->p1_mmio);
  adapter->native->p1_mmio = ((void*)0);
  pci_release_region(to_pci_dev(adapter->dev.parent), 2);
 }
 if (adapter->native->p2_mmio) {
  iounmap(adapter->native->p2_mmio);
  adapter->native->p2_mmio = ((void*)0);
  pci_release_region(to_pci_dev(adapter->dev.parent), 0);
 }
}
