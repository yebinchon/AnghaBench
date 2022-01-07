
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {int slice; int dev; TYPE_1__* guest; int p2n_mmio; } ;
struct TYPE_2__ {int p2n_size; int p2n_phys; } ;


 int ENOMEM ;
 int dev_err (int *,char*,int ) ;
 int ioremap (int ,int ) ;

__attribute__((used)) static int guest_map_slice_regs(struct cxl_afu *afu)
{
 if (!(afu->p2n_mmio = ioremap(afu->guest->p2n_phys, afu->guest->p2n_size))) {
  dev_err(&afu->dev, "Error mapping AFU(%d) MMIO regions\n",
   afu->slice);
  return -ENOMEM;
 }
 return 0;
}
