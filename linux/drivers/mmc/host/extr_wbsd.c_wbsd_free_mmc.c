
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int ignore_timer; } ;
struct mmc_host {int dummy; } ;
struct device {int dummy; } ;


 int BUG_ON (int ) ;
 int del_timer_sync (int *) ;
 struct mmc_host* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int mmc_free_host (struct mmc_host*) ;
 struct wbsd_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void wbsd_free_mmc(struct device *dev)
{
 struct mmc_host *mmc;
 struct wbsd_host *host;

 mmc = dev_get_drvdata(dev);
 if (!mmc)
  return;

 host = mmc_priv(mmc);
 BUG_ON(host == ((void*)0));

 del_timer_sync(&host->ignore_timer);

 mmc_free_host(mmc);

 dev_set_drvdata(dev, ((void*)0));
}
