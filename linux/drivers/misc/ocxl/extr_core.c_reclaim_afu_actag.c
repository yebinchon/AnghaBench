
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_fn {int actag_base; } ;
struct ocxl_afu {int actag_base; int actag_enabled; struct ocxl_fn* fn; } ;


 int ocxl_actag_afu_free (struct ocxl_fn*,int,int) ;

__attribute__((used)) static void reclaim_afu_actag(struct ocxl_afu *afu)
{
 struct ocxl_fn *fn = afu->fn;
 int start_offset, size;

 start_offset = afu->actag_base - fn->actag_base;
 size = afu->actag_enabled;
 ocxl_actag_afu_free(afu->fn, start_offset, size);
}
