
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct amd8111e_priv {int lock; } ;


 int amd8111e_restart (struct net_device*) ;
 int netdev_err (struct net_device*,char*) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void amd8111e_tx_timeout(struct net_device *dev)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 int err;

 netdev_err(dev, "transmit timed out, resetting\n");

 spin_lock_irq(&lp->lock);
 err = amd8111e_restart(dev);
 spin_unlock_irq(&lp->lock);
 if(!err)
  netif_wake_queue(dev);
}
