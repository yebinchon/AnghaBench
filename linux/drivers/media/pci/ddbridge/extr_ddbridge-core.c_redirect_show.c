
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;



__attribute__((used)) static ssize_t redirect_show(struct device *device,
        struct device_attribute *attr, char *buf)
{
 return 0;
}
