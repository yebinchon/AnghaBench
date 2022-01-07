
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {TYPE_1__* native; int * p2n_mmio; } ;
struct TYPE_2__ {int * afu_desc_mmio; int * p1n_mmio; } ;


 int iounmap (int *) ;

__attribute__((used)) static void pci_unmap_slice_regs(struct cxl_afu *afu)
{
 if (afu->p2n_mmio) {
  iounmap(afu->p2n_mmio);
  afu->p2n_mmio = ((void*)0);
 }
 if (afu->native->p1n_mmio) {
  iounmap(afu->native->p1n_mmio);
  afu->native->p1n_mmio = ((void*)0);
 }
 if (afu->native->afu_desc_mmio) {
  iounmap(afu->native->afu_desc_mmio);
  afu->native->afu_desc_mmio = ((void*)0);
 }
}
