
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int BH1770_LUX_RANGE ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t bh1770_lux_range_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%d\n", BH1770_LUX_RANGE);
}
