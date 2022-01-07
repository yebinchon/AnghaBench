
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int APDS_PROX_RANGE ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t apds990x_prox_range_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%u\n", APDS_PROX_RANGE);
}
