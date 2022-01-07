
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;
struct bcm_sysport_tx_ring {int lock; int index; } ;
struct bcm_sysport_priv {int netdev; } ;


 unsigned int __bcm_sysport_tx_reclaim (struct bcm_sysport_priv*,struct bcm_sysport_tx_ring*) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int bcm_sysport_tx_reclaim(struct bcm_sysport_priv *priv,
        struct bcm_sysport_tx_ring *ring)
{
 struct netdev_queue *txq;
 unsigned int released;
 unsigned long flags;

 txq = netdev_get_tx_queue(priv->netdev, ring->index);

 spin_lock_irqsave(&ring->lock, flags);
 released = __bcm_sysport_tx_reclaim(priv, ring);
 if (released)
  netif_tx_wake_queue(txq);

 spin_unlock_irqrestore(&ring->lock, flags);

 return released;
}
