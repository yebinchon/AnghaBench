
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl {int perst_loads_image; int perst_select_user; } ;
typedef int ssize_t ;


 int EINVAL ;
 int cxl_update_image_control (struct cxl*) ;
 int strncmp (char const*,char*,int) ;
 struct cxl* to_cxl_adapter (struct device*) ;

__attribute__((used)) static ssize_t load_image_on_perst_store(struct device *device,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct cxl *adapter = to_cxl_adapter(device);
 int rc;

 if (!strncmp(buf, "none", 4))
  adapter->perst_loads_image = 0;
 else if (!strncmp(buf, "user", 4)) {
  adapter->perst_select_user = 1;
  adapter->perst_loads_image = 1;
 } else if (!strncmp(buf, "factory", 7)) {
  adapter->perst_select_user = 0;
  adapter->perst_loads_image = 1;
 } else
  return -EINVAL;

 if ((rc = cxl_update_image_control(adapter)))
  return rc;

 return count;
}
