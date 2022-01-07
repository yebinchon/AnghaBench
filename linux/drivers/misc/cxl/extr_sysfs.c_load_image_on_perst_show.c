
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl {scalar_t__ perst_select_user; int perst_loads_image; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*) ;
 struct cxl* to_cxl_adapter (struct device*) ;

__attribute__((used)) static ssize_t load_image_on_perst_show(struct device *device,
     struct device_attribute *attr,
     char *buf)
{
 struct cxl *adapter = to_cxl_adapter(device);

 if (!adapter->perst_loads_image)
  return scnprintf(buf, PAGE_SIZE, "none\n");

 if (adapter->perst_select_user)
  return scnprintf(buf, PAGE_SIZE, "user\n");
 return scnprintf(buf, PAGE_SIZE, "factory\n");
}
