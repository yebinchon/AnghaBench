
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_rpmb_data {int id; } ;
struct device {int dummy; } ;


 struct mmc_rpmb_data* dev_get_drvdata (struct device*) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct mmc_rpmb_data*) ;
 int mmc_rpmb_ida ;

__attribute__((used)) static void mmc_blk_rpmb_device_release(struct device *dev)
{
 struct mmc_rpmb_data *rpmb = dev_get_drvdata(dev);

 ida_simple_remove(&mmc_rpmb_ida, rpmb->id);
 kfree(rpmb);
}
