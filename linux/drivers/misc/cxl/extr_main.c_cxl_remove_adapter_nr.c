
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl {int adapter_num; } ;


 int cxl_adapter_idr ;
 int idr_remove (int *,int ) ;

void cxl_remove_adapter_nr(struct cxl *adapter)
{
 idr_remove(&cxl_adapter_idr, adapter->adapter_num);
}
