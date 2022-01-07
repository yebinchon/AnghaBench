
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int owner; int (* close ) (struct net_device*) ;int (* command ) (struct net_device*,int ) ;int (* intmask ) (struct net_device*,int ) ;} ;
struct arcnet_local {TYPE_1__ hw; int reply_tasklet; int timer; } ;


 int ARCNET_LED_EVENT_STOP ;
 int NORXcmd ;
 int NOTXcmd ;
 int arcnet_led_event (struct net_device*,int ) ;
 int del_timer_sync (int *) ;
 int mdelay (int) ;
 int module_put (int ) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int stub1 (struct net_device*,int ) ;
 int stub2 (struct net_device*,int ) ;
 int stub3 (struct net_device*,int ) ;
 int stub4 (struct net_device*) ;
 int tasklet_kill (int *) ;

int arcnet_close(struct net_device *dev)
{
 struct arcnet_local *lp = netdev_priv(dev);

 arcnet_led_event(dev, ARCNET_LED_EVENT_STOP);
 del_timer_sync(&lp->timer);

 netif_stop_queue(dev);
 netif_carrier_off(dev);

 tasklet_kill(&lp->reply_tasklet);


 lp->hw.intmask(dev, 0);
 lp->hw.command(dev, NOTXcmd);
 lp->hw.command(dev, NORXcmd);
 mdelay(1);


 lp->hw.close(dev);
 module_put(lp->hw.owner);
 return 0;
}
