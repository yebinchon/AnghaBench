
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct apds990x_chip {int prox_continuous_mode; } ;
typedef int ssize_t ;


 struct apds990x_chip* dev_get_drvdata (struct device*) ;
 char** reporting_modes ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t apds990x_prox_reporting_mode_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct apds990x_chip *chip = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n",
  reporting_modes[!!chip->prox_continuous_mode]);
}
