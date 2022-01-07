
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocxl_fn {int pasid_base; } ;
struct TYPE_2__ {int pasid_supported_log; } ;
struct ocxl_afu {int pasid_base; struct ocxl_fn* fn; TYPE_1__ config; } ;


 int ocxl_pasid_afu_free (struct ocxl_fn*,int,int) ;

__attribute__((used)) static void reclaim_afu_pasid(struct ocxl_afu *afu)
{
 struct ocxl_fn *fn = afu->fn;
 int start_offset, size;

 start_offset = afu->pasid_base - fn->pasid_base;
 size = 1 << afu->config.pasid_supported_log;
 ocxl_pasid_afu_free(afu->fn, start_offset, size);
}
