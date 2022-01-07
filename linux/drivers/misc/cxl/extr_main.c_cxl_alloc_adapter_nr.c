
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl {int adapter_num; } ;


 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int adapter_idr_lock ;
 int cxl_adapter_idr ;
 int idr_alloc (int *,struct cxl*,int ,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cxl_alloc_adapter_nr(struct cxl *adapter)
{
 int i;

 idr_preload(GFP_KERNEL);
 spin_lock(&adapter_idr_lock);
 i = idr_alloc(&cxl_adapter_idr, adapter, 0, 0, GFP_NOWAIT);
 spin_unlock(&adapter_idr_lock);
 idr_preload_end();
 if (i < 0)
  return i;

 adapter->adapter_num = i;

 return 0;
}
