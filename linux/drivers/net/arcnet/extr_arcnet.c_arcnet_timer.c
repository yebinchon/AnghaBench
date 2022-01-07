
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct arcnet_local {struct net_device* dev; } ;


 struct arcnet_local* from_timer (int ,struct timer_list*,int ) ;
 struct arcnet_local* lp ;
 int netdev_info (struct net_device*,char*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int timer ;

__attribute__((used)) static void arcnet_timer(struct timer_list *t)
{
 struct arcnet_local *lp = from_timer(lp, t, timer);
 struct net_device *dev = lp->dev;

 if (!netif_carrier_ok(dev)) {
  netif_carrier_on(dev);
  netdev_info(dev, "link up\n");
 }
}
