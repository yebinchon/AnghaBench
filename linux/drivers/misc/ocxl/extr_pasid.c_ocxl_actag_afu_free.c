
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocxl_fn {int actag_list; } ;


 void range_free (int *,int ,int ,char*) ;

void ocxl_actag_afu_free(struct ocxl_fn *fn, u32 start, u32 size)
{
 return range_free(&fn->actag_list, start, size, "afu actag");
}
