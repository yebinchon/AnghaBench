
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_fn {int dummy; } ;
struct ocxl_afu {struct ocxl_fn* fn; int contexts_idr; int afu_control_lock; int contexts_lock; int kref; } ;


 int GFP_KERNEL ;
 int idr_init (int *) ;
 int kref_init (int *) ;
 struct ocxl_afu* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int ocxl_fn_get (struct ocxl_fn*) ;

__attribute__((used)) static struct ocxl_afu *alloc_afu(struct ocxl_fn *fn)
{
 struct ocxl_afu *afu;

 afu = kzalloc(sizeof(struct ocxl_afu), GFP_KERNEL);
 if (!afu)
  return ((void*)0);

 kref_init(&afu->kref);
 mutex_init(&afu->contexts_lock);
 mutex_init(&afu->afu_control_lock);
 idr_init(&afu->contexts_idr);
 afu->fn = fn;
 ocxl_fn_get(fn);
 return afu;
}
