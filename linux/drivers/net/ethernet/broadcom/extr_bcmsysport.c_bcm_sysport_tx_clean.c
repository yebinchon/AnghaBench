
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_sysport_tx_ring {int lock; } ;
struct bcm_sysport_priv {int dummy; } ;


 int __bcm_sysport_tx_reclaim (struct bcm_sysport_priv*,struct bcm_sysport_tx_ring*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bcm_sysport_tx_clean(struct bcm_sysport_priv *priv,
     struct bcm_sysport_tx_ring *ring)
{
 unsigned long flags;

 spin_lock_irqsave(&ring->lock, flags);
 __bcm_sysport_tx_reclaim(priv, ring);
 spin_unlock_irqrestore(&ring->lock, flags);
}
