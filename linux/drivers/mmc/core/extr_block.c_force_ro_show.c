
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_blk_data {int read_only; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int dev_to_disk (struct device*) ;
 int get_disk_ro (int ) ;
 struct mmc_blk_data* mmc_blk_get (int ) ;
 int mmc_blk_put (struct mmc_blk_data*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t force_ro_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 int ret;
 struct mmc_blk_data *md = mmc_blk_get(dev_to_disk(dev));

 ret = snprintf(buf, PAGE_SIZE, "%d\n",
         get_disk_ro(dev_to_disk(dev)) ^
         md->read_only);
 mmc_blk_put(md);
 return ret;
}
