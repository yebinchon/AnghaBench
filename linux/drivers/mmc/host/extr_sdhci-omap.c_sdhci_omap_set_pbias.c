
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_omap_host {int pbias_enabled; int pbias; struct device* dev; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_set_voltage (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int sdhci_omap_set_pbias(struct sdhci_omap_host *omap_host,
    bool power_on, unsigned int iov)
{
 int ret;
 struct device *dev = omap_host->dev;

 if (IS_ERR(omap_host->pbias))
  return 0;

 if (power_on) {
  ret = regulator_set_voltage(omap_host->pbias, iov, iov);
  if (ret) {
   dev_err(dev, "pbias set voltage failed\n");
   return ret;
  }

  if (omap_host->pbias_enabled)
   return 0;

  ret = regulator_enable(omap_host->pbias);
  if (ret) {
   dev_err(dev, "pbias reg enable fail\n");
   return ret;
  }

  omap_host->pbias_enabled = 1;
 } else {
  if (!omap_host->pbias_enabled)
   return 0;

  ret = regulator_disable(omap_host->pbias);
  if (ret) {
   dev_err(dev, "pbias reg disable fail\n");
   return ret;
  }
  omap_host->pbias_enabled = 0;
 }

 return 0;
}
