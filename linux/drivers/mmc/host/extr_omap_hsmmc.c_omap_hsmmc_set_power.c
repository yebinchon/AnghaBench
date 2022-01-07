
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {struct mmc_host* mmc; } ;
struct TYPE_2__ {int vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 scalar_t__ IS_ERR (int ) ;
 int omap_hsmmc_disable_supply (struct mmc_host*) ;
 int omap_hsmmc_enable_supply (struct mmc_host*) ;
 int omap_hsmmc_set_pbias (struct omap_hsmmc_host*,int) ;

__attribute__((used)) static int omap_hsmmc_set_power(struct omap_hsmmc_host *host, int power_on)
{
 struct mmc_host *mmc = host->mmc;
 int ret = 0;





 if (IS_ERR(mmc->supply.vmmc))
  return 0;

 ret = omap_hsmmc_set_pbias(host, 0);
 if (ret)
  return ret;
 if (power_on) {
  ret = omap_hsmmc_enable_supply(mmc);
  if (ret)
   return ret;

  ret = omap_hsmmc_set_pbias(host, 1);
  if (ret)
   goto err_set_voltage;
 } else {
  ret = omap_hsmmc_disable_supply(mmc);
  if (ret)
   return ret;
 }

 return 0;

err_set_voltage:
 omap_hsmmc_disable_supply(mmc);

 return ret;
}
