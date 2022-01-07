
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; int rx_errors; int tx_packets; int rx_packets; } ;
struct net_device {TYPE_1__ stats; scalar_t__ phydev; } ;
struct lan78xx_net {int intf; int bh; int wq; scalar_t__ flags; int rxq_pause; int urb_intr; int net; int stat_monitor; } ;


 int EVENT_DEV_OPEN ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,scalar_t__*) ;
 int del_timer_sync (int *) ;
 int ifdown ;
 int lan78xx_terminate_urbs (struct lan78xx_net*) ;
 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int netif_info (struct lan78xx_net*,int ,int ,char*,int ,int ,int ,int ) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (scalar_t__) ;
 int skb_queue_purge (int *) ;
 int tasklet_kill (int *) ;
 scalar_t__ timer_pending (int *) ;
 int usb_autopm_put_interface (int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int lan78xx_stop(struct net_device *net)
{
 struct lan78xx_net *dev = netdev_priv(net);

 if (timer_pending(&dev->stat_monitor))
  del_timer_sync(&dev->stat_monitor);

 if (net->phydev)
  phy_stop(net->phydev);

 clear_bit(EVENT_DEV_OPEN, &dev->flags);
 netif_stop_queue(net);

 netif_info(dev, ifdown, dev->net,
     "stop stats: rx/tx %lu/%lu, errs %lu/%lu\n",
     net->stats.rx_packets, net->stats.tx_packets,
     net->stats.rx_errors, net->stats.tx_errors);

 lan78xx_terminate_urbs(dev);

 usb_kill_urb(dev->urb_intr);

 skb_queue_purge(&dev->rxq_pause);





 dev->flags = 0;
 cancel_delayed_work_sync(&dev->wq);
 tasklet_kill(&dev->bh);

 usb_autopm_put_interface(dev->intf);

 return 0;
}
