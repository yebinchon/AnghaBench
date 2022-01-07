
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int chardev_d; int afu_cdev_d; } ;


 int CXL_AFU_MKDEV_D (struct cxl_afu*) ;
 int afu_master_fops ;
 int cxl_add_chardev (struct cxl_afu*,int ,int *,int *,char*,char*,int *) ;

int cxl_chardev_d_afu_add(struct cxl_afu *afu)
{
 return cxl_add_chardev(afu, CXL_AFU_MKDEV_D(afu), &afu->afu_cdev_d,
          &afu->chardev_d, "d", "dedicated",
          &afu_master_fops);
}
