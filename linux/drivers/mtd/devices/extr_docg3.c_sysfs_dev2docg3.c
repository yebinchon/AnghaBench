
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {struct docg3* priv; } ;
struct docg3 {int dummy; } ;
struct TYPE_2__ {int* name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;


 int DOC_MAX_NBFLOORS ;
 struct mtd_info** dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct docg3 *sysfs_dev2docg3(struct device *dev,
         struct device_attribute *attr)
{
 int floor;
 struct mtd_info **docg3_floors = dev_get_drvdata(dev);

 floor = attr->attr.name[1] - '0';
 if (floor < 0 || floor >= DOC_MAX_NBFLOORS)
  return ((void*)0);
 else
  return docg3_floors[floor]->priv;
}
