
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_fn {int actag_list; int pasid_list; int afu_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct ocxl_fn* kzalloc (int,int ) ;

__attribute__((used)) static struct ocxl_fn *alloc_function(void)
{
 struct ocxl_fn *fn;

 fn = kzalloc(sizeof(struct ocxl_fn), GFP_KERNEL);
 if (!fn)
  return ((void*)0);

 INIT_LIST_HEAD(&fn->afu_list);
 INIT_LIST_HEAD(&fn->pasid_list);
 INIT_LIST_HEAD(&fn->actag_list);

 return fn;
}
