
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_fn {int pasid_list; int afu_list; } ;


 int WARN_ON (int) ;
 int kfree (struct ocxl_fn*) ;
 int list_empty (int *) ;

__attribute__((used)) static void free_function(struct ocxl_fn *fn)
{
 WARN_ON(!list_empty(&fn->afu_list));
 WARN_ON(!list_empty(&fn->pasid_list));
 kfree(fn);
}
