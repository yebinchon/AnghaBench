
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocxl_fn {int actag_enabled; int actag_list; } ;


 int range_alloc (int *,int ,int,char*) ;

int ocxl_actag_afu_alloc(struct ocxl_fn *fn, u32 size)
{
 int max_actag;

 max_actag = fn->actag_enabled;
 return range_alloc(&fn->actag_list, size, max_actag, "afu actag");
}
