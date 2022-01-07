
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl_afu {TYPE_1__* adapter; scalar_t__ pp_size; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ ps_size; } ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,scalar_t__) ;
 struct cxl_afu* to_cxl_afu (struct device*) ;

__attribute__((used)) static ssize_t mmio_size_show(struct device *device,
         struct device_attribute *attr,
         char *buf)
{
 struct cxl_afu *afu = to_cxl_afu(device);

 if (afu->pp_size)
  return scnprintf(buf, PAGE_SIZE, "%llu\n", afu->pp_size);
 return scnprintf(buf, PAGE_SIZE, "%llu\n", afu->adapter->ps_size);
}
