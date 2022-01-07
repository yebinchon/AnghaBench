
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeprom_93xx46_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct eeprom_93xx46_dev* dev_get_drvdata (struct device*) ;
 int eeprom_93xx46_eral (struct eeprom_93xx46_dev*) ;
 int eeprom_93xx46_ew (struct eeprom_93xx46_dev*,int) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t eeprom_93xx46_store_erase(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct eeprom_93xx46_dev *edev = dev_get_drvdata(dev);
 int erase = 0, ret;

 sscanf(buf, "%d", &erase);
 if (erase) {
  ret = eeprom_93xx46_ew(edev, 1);
  if (ret)
   return ret;
  ret = eeprom_93xx46_eral(edev);
  if (ret)
   return ret;
  ret = eeprom_93xx46_ew(edev, 0);
  if (ret)
   return ret;
 }
 return count;
}
