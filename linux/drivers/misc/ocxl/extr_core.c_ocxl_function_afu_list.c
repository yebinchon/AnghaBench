
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct ocxl_fn {struct list_head afu_list; } ;



struct list_head *ocxl_function_afu_list(struct ocxl_fn *fn)
{
 return &fn->afu_list;
}
