
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl {int dummy; } ;
typedef int ssize_t ;


 int guest_collect_vpd (struct cxl*,int *,void*,size_t) ;

ssize_t cxl_guest_read_adapter_vpd(struct cxl *adapter, void *buf, size_t len)
{
 return guest_collect_vpd(adapter, ((void*)0), buf, len);
}
