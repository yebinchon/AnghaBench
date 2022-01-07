
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct mtd_info* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t mtd_name_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct mtd_info *mtd = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%s\n", mtd->name);
}
