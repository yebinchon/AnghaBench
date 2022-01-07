
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct cpmac_priv {int dev; int reset_pending; int lock; } ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int barrier () ;
 int cpmac_clear_tx (struct net_device*) ;
 scalar_t__ net_ratelimit () ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 scalar_t__ netif_msg_tx_err (struct cpmac_priv*) ;
 int netif_tx_wake_all_queues (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cpmac_tx_timeout(struct net_device *dev)
{
 struct cpmac_priv *priv = netdev_priv(dev);

 spin_lock(&priv->lock);
 dev->stats.tx_errors++;
 spin_unlock(&priv->lock);
 if (netif_msg_tx_err(priv) && net_ratelimit())
  netdev_warn(dev, "transmit timeout\n");

 atomic_inc(&priv->reset_pending);
 barrier();
 cpmac_clear_tx(dev);
 barrier();
 atomic_dec(&priv->reset_pending);

 netif_tx_wake_all_queues(priv->dev);
}
