
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int * chardev_s; int afu_cdev_s; int * chardev_m; int afu_cdev_m; int * chardev_d; int afu_cdev_d; } ;


 int cdev_del (int *) ;
 int device_unregister (int *) ;

void cxl_chardev_afu_remove(struct cxl_afu *afu)
{
 if (afu->chardev_d) {
  cdev_del(&afu->afu_cdev_d);
  device_unregister(afu->chardev_d);
  afu->chardev_d = ((void*)0);
 }
 if (afu->chardev_m) {
  cdev_del(&afu->afu_cdev_m);
  device_unregister(afu->chardev_m);
  afu->chardev_m = ((void*)0);
 }
 if (afu->chardev_s) {
  cdev_del(&afu->afu_cdev_s);
  device_unregister(afu->chardev_s);
  afu->chardev_s = ((void*)0);
 }
}
