
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int queue; } ;
struct de4x5_private {int txRingSize; TYPE_2__ cache; TYPE_1__* tx_ring; scalar_t__* tx_skb; } ;
struct TYPE_3__ {scalar_t__ status; } ;


 int __skb_queue_purge (int *) ;
 int de4x5_free_tx_buff (struct de4x5_private*,int) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
de4x5_free_tx_buffs(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    int i;

    for (i=0; i<lp->txRingSize; i++) {
 if (lp->tx_skb[i])
     de4x5_free_tx_buff(lp, i);
 lp->tx_ring[i].status = 0;
    }


    __skb_queue_purge(&lp->cache.queue);
}
