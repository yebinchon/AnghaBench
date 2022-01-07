
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char** reporting_modes ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static ssize_t apds990x_prox_reporting_avail_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%s %s\n", reporting_modes[0], reporting_modes[1]);
}
