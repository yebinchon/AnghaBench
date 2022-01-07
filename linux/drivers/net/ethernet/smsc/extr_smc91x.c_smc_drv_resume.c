
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_local {scalar_t__ phy_type; int phy_configure; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;


 struct smc_local* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int smc_enable (struct net_device*) ;
 int smc_enable_device (struct platform_device*) ;
 int smc_phy_configure (int *) ;
 int smc_reset (struct net_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int smc_drv_resume(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct net_device *ndev = platform_get_drvdata(pdev);

 if (ndev) {
  struct smc_local *lp = netdev_priv(ndev);
  smc_enable_device(pdev);
  if (netif_running(ndev)) {
   smc_reset(ndev);
   smc_enable(ndev);
   if (lp->phy_type != 0)
    smc_phy_configure(&lp->phy_configure);
   netif_device_attach(ndev);
  }
 }
 return 0;
}
