
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl_afu {int modes_supported; } ;
typedef int ssize_t ;


 int CXL_MODE_DEDICATED ;
 int CXL_MODE_DIRECTED ;
 int PAGE_SIZE ;
 int scnprintf (char*,int,char*) ;
 struct cxl_afu* to_cxl_afu (struct device*) ;

__attribute__((used)) static ssize_t modes_supported_show(struct device *device,
        struct device_attribute *attr, char *buf)
{
 struct cxl_afu *afu = to_cxl_afu(device);
 char *p = buf, *end = buf + PAGE_SIZE;

 if (afu->modes_supported & CXL_MODE_DEDICATED)
  p += scnprintf(p, end - p, "dedicated_process\n");
 if (afu->modes_supported & CXL_MODE_DIRECTED)
  p += scnprintf(p, end - p, "afu_directed\n");
 return (p - buf);
}
