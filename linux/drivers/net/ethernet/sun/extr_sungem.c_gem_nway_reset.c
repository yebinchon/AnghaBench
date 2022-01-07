
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gem {int link_timer; int dev; int want_autoneg; } ;


 int EINVAL ;
 int del_timer_sync (int *) ;
 int gem_begin_auto_negotiation (struct gem*,int *) ;
 struct gem* netdev_priv (struct net_device*) ;
 scalar_t__ netif_device_present (int ) ;

__attribute__((used)) static int gem_nway_reset(struct net_device *dev)
{
 struct gem *gp = netdev_priv(dev);

 if (!gp->want_autoneg)
  return -EINVAL;


 if (netif_device_present(gp->dev)) {
  del_timer_sync(&gp->link_timer);
  gem_begin_auto_negotiation(gp, ((void*)0));
 }

 return 0;
}
