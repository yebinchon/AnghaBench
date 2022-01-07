
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_file_info {int cdev; } ;


 int cdev_del (int *) ;

__attribute__((used)) static void ocxl_file_make_invisible(struct ocxl_file_info *info)
{
 cdev_del(&info->cdev);
}
