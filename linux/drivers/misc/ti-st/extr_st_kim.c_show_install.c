
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kim_data_s {int ldisc_install; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct kim_data_s* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_install(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct kim_data_s *kim_data = dev_get_drvdata(dev);
 return sprintf(buf, "%d\n", kim_data->ldisc_install);
}
