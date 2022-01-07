
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {unsigned int writesize; unsigned int subpage_sft; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct mtd_info* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t mtd_subpagesize_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct mtd_info *mtd = dev_get_drvdata(dev);
 unsigned int subpagesize = mtd->writesize >> mtd->subpage_sft;

 return snprintf(buf, PAGE_SIZE, "%u\n", subpagesize);
}
