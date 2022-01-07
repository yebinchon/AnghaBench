
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; int dev; } ;
struct mpc52xx_fec_priv {int lock; } ;


 int dev_warn (int *,char*) ;
 int mpc52xx_fec_reset (struct net_device*) ;
 struct mpc52xx_fec_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mpc52xx_fec_tx_timeout(struct net_device *dev)
{
 struct mpc52xx_fec_priv *priv = netdev_priv(dev);
 unsigned long flags;

 dev_warn(&dev->dev, "transmit timed out\n");

 spin_lock_irqsave(&priv->lock, flags);
 mpc52xx_fec_reset(dev);
 dev->stats.tx_errors++;
 spin_unlock_irqrestore(&priv->lock, flags);

 netif_wake_queue(dev);
}
