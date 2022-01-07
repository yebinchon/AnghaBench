
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl {int dev; } ;


 int adapter_idr_lock ;
 int cxl_adapter_idr ;
 int get_device (int *) ;
 struct cxl* idr_find (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct cxl *get_cxl_adapter(int num)
{
 struct cxl *adapter;

 spin_lock(&adapter_idr_lock);
 if ((adapter = idr_find(&cxl_adapter_idr, num)))
  get_device(&adapter->dev);
 spin_unlock(&adapter_idr_lock);

 return adapter;
}
