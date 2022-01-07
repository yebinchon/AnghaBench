
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {scalar_t__ p2n_mmio; } ;


 int iounmap (scalar_t__) ;

__attribute__((used)) static void guest_unmap_slice_regs(struct cxl_afu *afu)
{
 if (afu->p2n_mmio)
  iounmap(afu->p2n_mmio);
}
