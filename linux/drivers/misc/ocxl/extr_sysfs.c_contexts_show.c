
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_afu {int pasid_max; int pasid_count; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ,int ) ;
 struct ocxl_afu* to_afu (struct device*) ;

__attribute__((used)) static ssize_t contexts_show(struct device *device,
  struct device_attribute *attr,
  char *buf)
{
 struct ocxl_afu *afu = to_afu(device);

 return scnprintf(buf, PAGE_SIZE, "%d/%d\n",
   afu->pasid_count, afu->pasid_max);
}
