
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_file_info {int dev; } ;
struct ocxl_afu {int dummy; } ;


 int device_unregister (int *) ;
 struct ocxl_file_info* ocxl_afu_get_private (struct ocxl_afu*) ;
 int ocxl_file_make_invisible (struct ocxl_file_info*) ;
 int ocxl_sysfs_unregister_afu (struct ocxl_file_info*) ;

void ocxl_file_unregister_afu(struct ocxl_afu *afu)
{
 struct ocxl_file_info *info = ocxl_afu_get_private(afu);

 if (!info)
  return;

 ocxl_file_make_invisible(info);
 ocxl_sysfs_unregister_afu(info);
 device_unregister(&info->dev);
}
