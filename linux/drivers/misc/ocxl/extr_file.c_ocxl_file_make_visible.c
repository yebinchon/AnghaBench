
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devt; } ;
struct ocxl_file_info {TYPE_1__ dev; int cdev; } ;


 int cdev_add (int *,int ,int) ;
 int cdev_init (int *,int *) ;
 int dev_err (TYPE_1__*,char*,int) ;
 int ocxl_afu_fops ;

__attribute__((used)) static int ocxl_file_make_visible(struct ocxl_file_info *info)
{
 int rc;

 cdev_init(&info->cdev, &ocxl_afu_fops);
 rc = cdev_add(&info->cdev, info->dev.devt, 1);
 if (rc) {
  dev_err(&info->dev, "Unable to add afu char device: %d\n", rc);
  return rc;
 }

 return 0;
}
