
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int HBM_MAJOR_VERSION ;
 int HBM_MINOR_VERSION ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t hbm_ver_drv_show(struct device *device,
    struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%u.%u\n", HBM_MAJOR_VERSION, HBM_MINOR_VERSION);
}
