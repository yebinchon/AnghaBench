
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int max_pasid_log; } ;
struct ocxl_fn {int pasid_list; TYPE_1__ config; } ;


 int ENOSPC ;
 int range_alloc (int *,int ,int,char*) ;

int ocxl_pasid_afu_alloc(struct ocxl_fn *fn, u32 size)
{
 int max_pasid;

 if (fn->config.max_pasid_log < 0)
  return -ENOSPC;
 max_pasid = 1 << fn->config.max_pasid_log;
 return range_alloc(&fn->pasid_list, size, max_pasid, "afu pasid");
}
