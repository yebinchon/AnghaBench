
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {unsigned int bitflip_threshold; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct mtd_info* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int ,unsigned int*) ;

__attribute__((used)) static ssize_t mtd_bitflip_threshold_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct mtd_info *mtd = dev_get_drvdata(dev);
 unsigned int bitflip_threshold;
 int retval;

 retval = kstrtouint(buf, 0, &bitflip_threshold);
 if (retval)
  return retval;

 mtd->bitflip_threshold = bitflip_threshold;
 return count;
}
