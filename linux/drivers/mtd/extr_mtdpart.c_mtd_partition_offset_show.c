
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_part {int offset; } ;
struct mtd_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct mtd_info* dev_get_drvdata (struct device*) ;
 struct mtd_part* mtd_to_part (struct mtd_info*) ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t mtd_partition_offset_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct mtd_info *mtd = dev_get_drvdata(dev);
 struct mtd_part *part = mtd_to_part(mtd);
 return snprintf(buf, PAGE_SIZE, "%llu\n", part->offset);
}
