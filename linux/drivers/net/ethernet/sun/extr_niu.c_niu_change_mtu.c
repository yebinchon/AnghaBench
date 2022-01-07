
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ expires; } ;
struct TYPE_4__ {scalar_t__ loopback_mode; } ;
struct niu {TYPE_2__ timer; TYPE_1__ link_config; int lock; } ;
struct net_device {int mtu; } ;


 int ETH_DATA_LEN ;
 scalar_t__ HZ ;
 scalar_t__ LOOPBACK_DISABLED ;
 int add_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 struct niu* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int niu_alloc_channels (struct niu*) ;
 int niu_enable_interrupts (struct niu*,int) ;
 int niu_enable_napi (struct niu*) ;
 int niu_free_channels (struct niu*) ;
 int niu_full_shutdown (struct niu*,struct net_device*) ;
 int niu_init_hw (struct niu*) ;
 int niu_stop_hw (struct niu*) ;
 int niu_timer ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int timer_setup (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int niu_change_mtu(struct net_device *dev, int new_mtu)
{
 struct niu *np = netdev_priv(dev);
 int err, orig_jumbo, new_jumbo;

 orig_jumbo = (dev->mtu > ETH_DATA_LEN);
 new_jumbo = (new_mtu > ETH_DATA_LEN);

 dev->mtu = new_mtu;

 if (!netif_running(dev) ||
     (orig_jumbo == new_jumbo))
  return 0;

 niu_full_shutdown(np, dev);

 niu_free_channels(np);

 niu_enable_napi(np);

 err = niu_alloc_channels(np);
 if (err)
  return err;

 spin_lock_irq(&np->lock);

 err = niu_init_hw(np);
 if (!err) {
  timer_setup(&np->timer, niu_timer, 0);
  np->timer.expires = jiffies + HZ;

  err = niu_enable_interrupts(np, 1);
  if (err)
   niu_stop_hw(np);
 }

 spin_unlock_irq(&np->lock);

 if (!err) {
  netif_tx_start_all_queues(dev);
  if (np->link_config.loopback_mode != LOOPBACK_DISABLED)
   netif_carrier_on(dev);

  add_timer(&np->timer);
 }

 return err;
}
