
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_ecc_stats {int corrected; } ;
struct mtd_info {struct mtd_ecc_stats ecc_stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct mtd_info* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t mtd_ecc_stats_corrected_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct mtd_info *mtd = dev_get_drvdata(dev);
 struct mtd_ecc_stats *ecc_stats = &mtd->ecc_stats;

 return snprintf(buf, PAGE_SIZE, "%u\n", ecc_stats->corrected);
}
