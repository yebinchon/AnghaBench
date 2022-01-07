
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ expires; } ;
struct TYPE_4__ {scalar_t__ loopback_mode; } ;
struct niu {TYPE_2__ timer; TYPE_1__ link_config; int lock; } ;
struct net_device {int dummy; } ;


 scalar_t__ HZ ;
 scalar_t__ LOOPBACK_DISABLED ;
 int add_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 struct niu* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int niu_alloc_channels (struct niu*) ;
 int niu_disable_napi (struct niu*) ;
 int niu_enable_interrupts (struct niu*,int) ;
 int niu_enable_napi (struct niu*) ;
 int niu_free_channels (struct niu*) ;
 int niu_free_irq (struct niu*) ;
 int niu_init_hw (struct niu*) ;
 int niu_request_irq (struct niu*) ;
 int niu_stop_hw (struct niu*) ;
 int niu_timer ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int timer_setup (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int niu_open(struct net_device *dev)
{
 struct niu *np = netdev_priv(dev);
 int err;

 netif_carrier_off(dev);

 err = niu_alloc_channels(np);
 if (err)
  goto out_err;

 err = niu_enable_interrupts(np, 0);
 if (err)
  goto out_free_channels;

 err = niu_request_irq(np);
 if (err)
  goto out_free_channels;

 niu_enable_napi(np);

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

 if (err) {
  niu_disable_napi(np);
  goto out_free_irq;
 }

 netif_tx_start_all_queues(dev);

 if (np->link_config.loopback_mode != LOOPBACK_DISABLED)
  netif_carrier_on(dev);

 add_timer(&np->timer);

 return 0;

out_free_irq:
 niu_free_irq(np);

out_free_channels:
 niu_free_channels(np);

out_err:
 return err;
}
