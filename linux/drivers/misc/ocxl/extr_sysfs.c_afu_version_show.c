
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version_minor; int version_major; } ;
struct ocxl_afu {TYPE_1__ config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ,int ) ;
 struct ocxl_afu* to_afu (struct device*) ;

__attribute__((used)) static ssize_t afu_version_show(struct device *device,
    struct device_attribute *attr,
    char *buf)
{
 struct ocxl_afu *afu = to_afu(device);

 return scnprintf(buf, PAGE_SIZE, "%hhu:%hhu\n",
   afu->config.version_major,
   afu->config.version_minor);
}
