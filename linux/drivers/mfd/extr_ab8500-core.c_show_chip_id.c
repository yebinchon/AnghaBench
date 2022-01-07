
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ab8500 {int chip_id; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct ab8500* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_chip_id(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct ab8500 *ab8500;

 ab8500 = dev_get_drvdata(dev);

 return sprintf(buf, "%#x\n", ab8500 ? ab8500->chip_id : -EINVAL);
}
