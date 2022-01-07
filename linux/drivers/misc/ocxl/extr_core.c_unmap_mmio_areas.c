
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int global_mmio_bar; int pp_mmio_bar; } ;
struct ocxl_afu {TYPE_1__ config; int fn; scalar_t__ pp_mmio_start; scalar_t__ global_mmio_start; int * global_mmio_ptr; } ;


 int iounmap (int *) ;
 int release_fn_bar (int ,int ) ;

__attribute__((used)) static void unmap_mmio_areas(struct ocxl_afu *afu)
{
 if (afu->global_mmio_ptr) {
  iounmap(afu->global_mmio_ptr);
  afu->global_mmio_ptr = ((void*)0);
 }
 afu->global_mmio_start = 0;
 afu->pp_mmio_start = 0;
 release_fn_bar(afu->fn, afu->config.pp_mmio_bar);
 release_fn_bar(afu->fn, afu->config.global_mmio_bar);
}
