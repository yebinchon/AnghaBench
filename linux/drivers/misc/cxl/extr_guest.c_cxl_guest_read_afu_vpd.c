
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int dummy; } ;
typedef int ssize_t ;


 int guest_collect_vpd (int *,struct cxl_afu*,void*,size_t) ;

ssize_t cxl_guest_read_afu_vpd(struct cxl_afu *afu, void *buf, size_t len)
{
 return guest_collect_vpd(((void*)0), afu, buf, len);
}
