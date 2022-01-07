
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int queue; } ;
struct de4x5_private {TYPE_1__ cache; } ;


 struct sk_buff* __skb_dequeue (int *) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct sk_buff *
de4x5_get_cache(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);

    return __skb_dequeue(&lp->cache.queue);
}
