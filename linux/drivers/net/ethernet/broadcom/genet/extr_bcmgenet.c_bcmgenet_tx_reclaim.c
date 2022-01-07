
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bcmgenet_tx_ring {int lock; } ;


 unsigned int __bcmgenet_tx_reclaim (struct net_device*,struct bcmgenet_tx_ring*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static unsigned int bcmgenet_tx_reclaim(struct net_device *dev,
    struct bcmgenet_tx_ring *ring)
{
 unsigned int released;

 spin_lock_bh(&ring->lock);
 released = __bcmgenet_tx_reclaim(dev, ring);
 spin_unlock_bh(&ring->lock);

 return released;
}
