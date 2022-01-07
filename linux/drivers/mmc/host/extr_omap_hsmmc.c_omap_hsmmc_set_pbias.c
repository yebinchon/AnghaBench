
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {int pbias_enabled; int dev; int pbias; } ;


 scalar_t__ IS_ERR (int ) ;
 int dev_err (int ,char*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int omap_hsmmc_set_pbias(struct omap_hsmmc_host *host, bool power_on)
{
 int ret;

 if (IS_ERR(host->pbias))
  return 0;

 if (power_on) {
  if (host->pbias_enabled == 0) {
   ret = regulator_enable(host->pbias);
   if (ret) {
    dev_err(host->dev, "pbias reg enable fail\n");
    return ret;
   }
   host->pbias_enabled = 1;
  }
 } else {
  if (host->pbias_enabled == 1) {
   ret = regulator_disable(host->pbias);
   if (ret) {
    dev_err(host->dev, "pbias reg disable fail\n");
    return ret;
   }
   host->pbias_enabled = 0;
  }
 }

 return 0;
}
