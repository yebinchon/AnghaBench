
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ntb_netdev {int tx_timer; int qp; struct net_device* ndev; } ;
struct net_device {int dummy; } ;


 struct ntb_netdev* dev ;
 struct ntb_netdev* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ ntb_transport_tx_free_entry (int ) ;
 int smp_mb () ;
 scalar_t__ tx_stop ;
 int tx_time ;
 int tx_timer ;
 scalar_t__ usecs_to_jiffies (int ) ;

__attribute__((used)) static void ntb_netdev_tx_timer(struct timer_list *t)
{
 struct ntb_netdev *dev = from_timer(dev, t, tx_timer);
 struct net_device *ndev = dev->ndev;

 if (ntb_transport_tx_free_entry(dev->qp) < tx_stop) {
  mod_timer(&dev->tx_timer, jiffies + usecs_to_jiffies(tx_time));
 } else {



  smp_mb();
  if (netif_queue_stopped(ndev))
   netif_wake_queue(ndev);
 }
}
