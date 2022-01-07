
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int EHEA_CAPABILITIES ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t capabilities_show(struct device_driver *drv, char *buf)
{
 return sprintf(buf, "%d", EHEA_CAPABILITIES);
}
