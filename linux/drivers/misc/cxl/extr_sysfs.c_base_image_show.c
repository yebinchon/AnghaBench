
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl {int base_image; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 struct cxl* to_cxl_adapter (struct device*) ;

__attribute__((used)) static ssize_t base_image_show(struct device *device,
          struct device_attribute *attr,
          char *buf)
{
 struct cxl *adapter = to_cxl_adapter(device);

 return scnprintf(buf, PAGE_SIZE, "%i\n", adapter->base_image);
}
