
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct apds990x_chip {int lux_calib; } ;
typedef int ssize_t ;


 struct apds990x_chip* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t apds990x_lux_calib_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct apds990x_chip *chip = dev_get_drvdata(dev);

 return sprintf(buf, "%u\n", chip->lux_calib);
}
