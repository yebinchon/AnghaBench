
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int be_on_die_temp; } ;
struct be_adapter {TYPE_1__ hwmon_info; } ;
typedef int ssize_t ;


 int BE_INVALID_DIE_TEMP ;
 int EIO ;
 struct be_adapter* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t be_hwmon_show_temp(struct device *dev,
      struct device_attribute *dev_attr,
      char *buf)
{
 struct be_adapter *adapter = dev_get_drvdata(dev);


 if (adapter->hwmon_info.be_on_die_temp == BE_INVALID_DIE_TEMP)
  return -EIO;
 else
  return sprintf(buf, "%u\n",
          adapter->hwmon_info.be_on_die_temp * 1000);
}
