
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct device {int dummy; } ;


 struct net_device* dev_get_drvdata (struct device*) ;
 int emac_dev_stop (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int davinci_emac_suspend(struct device *dev)
{
 struct net_device *ndev = dev_get_drvdata(dev);

 if (netif_running(ndev))
  emac_dev_stop(ndev);

 return 0;
}
