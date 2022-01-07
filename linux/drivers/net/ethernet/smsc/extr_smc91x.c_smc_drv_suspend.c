
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct device {int dummy; } ;


 struct net_device* dev_get_drvdata (struct device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int smc_phy_powerdown (struct net_device*) ;
 int smc_shutdown (struct net_device*) ;

__attribute__((used)) static int smc_drv_suspend(struct device *dev)
{
 struct net_device *ndev = dev_get_drvdata(dev);

 if (ndev) {
  if (netif_running(ndev)) {
   netif_device_detach(ndev);
   smc_shutdown(ndev);
   smc_phy_powerdown(ndev);
  }
 }
 return 0;
}
