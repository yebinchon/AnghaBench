
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tulip_private {int timer; int * phys; struct net_device* dev; } ;
struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;


 int HZ ;
 int RUN_AT (int) ;
 struct tulip_private* from_timer (int ,struct timer_list*,int ) ;
 int mod_timer (int *,int ) ;
 int netdev_dbg (struct net_device*,char*,int ,int ) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int timer ;
 struct tulip_private* tp ;
 scalar_t__ tulip_check_duplex (struct net_device*) ;
 int tulip_debug ;
 int tulip_mdio_read (struct net_device*,int ,int) ;

void comet_timer(struct timer_list *t)
{
 struct tulip_private *tp = from_timer(tp, t, timer);
 struct net_device *dev = tp->dev;
 int next_tick = 2*HZ;

 if (tulip_debug > 1)
  netdev_dbg(dev, "Comet link status %04x partner capability %04x\n",
      tulip_mdio_read(dev, tp->phys[0], 1),
      tulip_mdio_read(dev, tp->phys[0], 5));



 if (tulip_check_duplex(dev) < 0)
  { netif_carrier_off(dev); }
 else
  { netif_carrier_on(dev); }
 mod_timer(&tp->timer, RUN_AT(next_tick));
}
