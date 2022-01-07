
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl {scalar_t__ user_image_loaded; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*) ;
 struct cxl* to_cxl_adapter (struct device*) ;

__attribute__((used)) static ssize_t image_loaded_show(struct device *device,
     struct device_attribute *attr,
     char *buf)
{
 struct cxl *adapter = to_cxl_adapter(device);

 if (adapter->user_image_loaded)
  return scnprintf(buf, PAGE_SIZE, "user\n");
 return scnprintf(buf, PAGE_SIZE, "factory\n");
}
