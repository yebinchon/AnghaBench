
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int index; } ;
struct device {int dummy; } ;


 struct mmc_host* cls_dev_to_mmc_host (struct device*) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct mmc_host*) ;
 int mmc_host_ida ;

__attribute__((used)) static void mmc_host_classdev_release(struct device *dev)
{
 struct mmc_host *host = cls_dev_to_mmc_host(dev);
 ida_simple_remove(&mmc_host_ida, host->index);
 kfree(host);
}
