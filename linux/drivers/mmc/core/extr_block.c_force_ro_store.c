
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_blk_data {scalar_t__ read_only; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int dev_to_disk (struct device*) ;
 struct mmc_blk_data* mmc_blk_get (int ) ;
 int mmc_blk_put (struct mmc_blk_data*) ;
 int set_disk_ro (int ,int) ;
 unsigned long simple_strtoul (char const*,char**,int ) ;

__attribute__((used)) static ssize_t force_ro_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 int ret;
 char *end;
 struct mmc_blk_data *md = mmc_blk_get(dev_to_disk(dev));
 unsigned long set = simple_strtoul(buf, &end, 0);
 if (end == buf) {
  ret = -EINVAL;
  goto out;
 }

 set_disk_ro(dev_to_disk(dev), set || md->read_only);
 ret = count;
out:
 mmc_blk_put(md);
 return ret;
}
