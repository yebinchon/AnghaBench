
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_afu {int dummy; } ;


 int reclaim_afu_actag (struct ocxl_afu*) ;
 int reclaim_afu_pasid (struct ocxl_afu*) ;
 int unmap_mmio_areas (struct ocxl_afu*) ;

__attribute__((used)) static void deconfigure_afu(struct ocxl_afu *afu)
{
 unmap_mmio_areas(afu);
 reclaim_afu_pasid(afu);
 reclaim_afu_actag(afu);
}
