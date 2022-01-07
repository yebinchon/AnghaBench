
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl_afu {scalar_t__ current_mode; } ;
typedef int ssize_t ;


 scalar_t__ CXL_MODE_DEDICATED ;
 scalar_t__ CXL_MODE_DIRECTED ;
 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*) ;
 struct cxl_afu* to_cxl_afu (struct device*) ;

__attribute__((used)) static ssize_t mode_show(struct device *device,
    struct device_attribute *attr,
    char *buf)
{
 struct cxl_afu *afu = to_cxl_afu(device);

 if (afu->current_mode == CXL_MODE_DEDICATED)
  return scnprintf(buf, PAGE_SIZE, "dedicated_process\n");
 if (afu->current_mode == CXL_MODE_DIRECTED)
  return scnprintf(buf, PAGE_SIZE, "afu_directed\n");
 return scnprintf(buf, PAGE_SIZE, "none\n");
}
