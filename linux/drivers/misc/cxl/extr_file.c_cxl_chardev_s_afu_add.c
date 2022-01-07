
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int chardev_s; int afu_cdev_s; } ;


 int CXL_AFU_MKDEV_S (struct cxl_afu*) ;
 int afu_fops ;
 int cxl_add_chardev (struct cxl_afu*,int ,int *,int *,char*,char*,int *) ;

int cxl_chardev_s_afu_add(struct cxl_afu *afu)
{
 return cxl_add_chardev(afu, CXL_AFU_MKDEV_S(afu), &afu->afu_cdev_s,
          &afu->chardev_s, "s", "shared",
          &afu_fops);
}
