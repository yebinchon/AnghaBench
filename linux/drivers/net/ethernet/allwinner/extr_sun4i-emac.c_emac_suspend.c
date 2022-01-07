
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
typedef int pm_message_t ;


 int emac_shutdown (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int emac_suspend(struct platform_device *dev, pm_message_t state)
{
 struct net_device *ndev = platform_get_drvdata(dev);

 netif_carrier_off(ndev);
 netif_device_detach(ndev);
 emac_shutdown(ndev);

 return 0;
}
