
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_file_info {int attr_global_mmio; int dev; } ;


 int ARRAY_SIZE (int *) ;
 int * afu_attrs ;
 int device_remove_bin_file (int *,int *) ;
 int device_remove_file (int *,int *) ;

void ocxl_sysfs_unregister_afu(struct ocxl_file_info *info)
{
 int i;





 for (i = 0; i < ARRAY_SIZE(afu_attrs); i++)
  device_remove_file(&info->dev, &afu_attrs[i]);
 device_remove_bin_file(&info->dev, &info->attr_global_mmio);
}
