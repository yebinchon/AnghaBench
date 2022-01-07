
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fimc_md {int user_subdev_api; TYPE_2__** fimc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {int user_subdev_api; } ;
struct TYPE_4__ {TYPE_1__ vid_cap; } ;


 int FIMC_MAX_DEVS ;
 struct fimc_md* dev_get_drvdata (struct device*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static ssize_t fimc_md_sysfs_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct fimc_md *fmd = dev_get_drvdata(dev);
 bool subdev_api;
 int i;

 if (!strcmp(buf, "vid-dev\n"))
  subdev_api = 0;
 else if (!strcmp(buf, "sub-dev\n"))
  subdev_api = 1;
 else
  return count;

 fmd->user_subdev_api = subdev_api;
 for (i = 0; i < FIMC_MAX_DEVS; i++)
  if (fmd->fimc[i])
   fmd->fimc[i]->vid_cap.user_subdev_api = subdev_api;
 return count;
}
