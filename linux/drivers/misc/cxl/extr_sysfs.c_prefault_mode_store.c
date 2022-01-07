
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl_afu {int prefault_mode; } ;
typedef size_t ssize_t ;
typedef enum prefault_modes { ____Placeholder_prefault_modes } prefault_modes ;


 int CXL_PREFAULT_ALL ;
 int CXL_PREFAULT_NONE ;
 int CXL_PREFAULT_WED ;
 size_t EINVAL ;
 int dev_err (struct device*,char*) ;
 int radix_enabled () ;
 int strncmp (char const*,char*,int) ;
 struct cxl_afu* to_cxl_afu (struct device*) ;

__attribute__((used)) static ssize_t prefault_mode_store(struct device *device,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct cxl_afu *afu = to_cxl_afu(device);
 enum prefault_modes mode = -1;

 if (!strncmp(buf, "none", 4))
  mode = CXL_PREFAULT_NONE;
 else {
  if (!radix_enabled()) {


   if (!strncmp(buf, "work_element_descriptor", 23))
    mode = CXL_PREFAULT_WED;
   if (!strncmp(buf, "all", 3))
    mode = CXL_PREFAULT_ALL;
  } else {
   dev_err(device, "Cannot prefault with radix enabled\n");
  }
 }

 if (mode == -1)
  return -EINVAL;

 afu->prefault_mode = mode;
 return count;
}
