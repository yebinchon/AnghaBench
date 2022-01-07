
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl_afu {int prefault_mode; } ;
typedef int ssize_t ;




 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*) ;
 struct cxl_afu* to_cxl_afu (struct device*) ;

__attribute__((used)) static ssize_t prefault_mode_show(struct device *device,
      struct device_attribute *attr,
      char *buf)
{
 struct cxl_afu *afu = to_cxl_afu(device);

 switch (afu->prefault_mode) {
 case 128:
  return scnprintf(buf, PAGE_SIZE, "work_element_descriptor\n");
 case 129:
  return scnprintf(buf, PAGE_SIZE, "all\n");
 default:
  return scnprintf(buf, PAGE_SIZE, "none\n");
 }
}
