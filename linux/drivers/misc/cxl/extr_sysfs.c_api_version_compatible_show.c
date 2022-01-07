
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CXL_API_VERSION_COMPATIBLE ;
 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t api_version_compatible_show(struct device *device,
        struct device_attribute *attr,
        char *buf)
{
 return scnprintf(buf, PAGE_SIZE, "%i\n", CXL_API_VERSION_COMPATIBLE);
}
