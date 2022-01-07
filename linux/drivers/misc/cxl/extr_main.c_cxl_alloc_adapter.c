
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl {int contexts_num; int adapter_num; int dev; int afu_list_lock; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 scalar_t__ cxl_alloc_adapter_nr (struct cxl*) ;
 int cxl_remove_adapter_nr (struct cxl*) ;
 scalar_t__ dev_set_name (int *,char*,int ) ;
 int kfree (struct cxl*) ;
 struct cxl* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct cxl *cxl_alloc_adapter(void)
{
 struct cxl *adapter;

 if (!(adapter = kzalloc(sizeof(struct cxl), GFP_KERNEL)))
  return ((void*)0);

 spin_lock_init(&adapter->afu_list_lock);

 if (cxl_alloc_adapter_nr(adapter))
  goto err1;

 if (dev_set_name(&adapter->dev, "card%i", adapter->adapter_num))
  goto err2;


 atomic_set(&adapter->contexts_num, -1);

 return adapter;
err2:
 cxl_remove_adapter_nr(adapter);
err1:
 kfree(adapter);
 return ((void*)0);
}
