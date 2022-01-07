
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int chardev_m; int afu_cdev_m; } ;


 int CXL_AFU_MKDEV_M (struct cxl_afu*) ;
 int afu_master_fops ;
 int cxl_add_chardev (struct cxl_afu*,int ,int *,int *,char*,char*,int *) ;

int cxl_chardev_m_afu_add(struct cxl_afu *afu)
{
 return cxl_add_chardev(afu, CXL_AFU_MKDEV_M(afu), &afu->afu_cdev_m,
          &afu->chardev_m, "m", "master",
          &afu_master_fops);
}
