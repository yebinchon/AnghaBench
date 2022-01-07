
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl_afu {TYPE_1__* native; } ;
typedef int ssize_t ;
struct TYPE_2__ {int pp_offset; } ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 struct cxl_afu* to_afu_chardev_m (struct device*) ;

__attribute__((used)) static ssize_t pp_mmio_off_show(struct device *device,
    struct device_attribute *attr,
    char *buf)
{
 struct cxl_afu *afu = to_afu_chardev_m(device);

 return scnprintf(buf, PAGE_SIZE, "%llu\n", afu->native->pp_offset);
}
