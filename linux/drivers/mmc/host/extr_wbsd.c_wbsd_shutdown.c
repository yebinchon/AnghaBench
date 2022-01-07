
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int dummy; } ;
struct mmc_host {int dummy; } ;
struct device {int dummy; } ;


 struct mmc_host* dev_get_drvdata (struct device*) ;
 struct wbsd_host* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 int wbsd_chip_poweroff (struct wbsd_host*) ;
 int wbsd_free_mmc (struct device*) ;
 int wbsd_release_resources (struct wbsd_host*) ;

__attribute__((used)) static void wbsd_shutdown(struct device *dev, int pnp)
{
 struct mmc_host *mmc = dev_get_drvdata(dev);
 struct wbsd_host *host;

 if (!mmc)
  return;

 host = mmc_priv(mmc);

 mmc_remove_host(mmc);




 if (!pnp)
  wbsd_chip_poweroff(host);

 wbsd_release_resources(host);

 wbsd_free_mmc(dev);
}
