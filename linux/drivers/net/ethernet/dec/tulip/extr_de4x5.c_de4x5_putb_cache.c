
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int queue; } ;
struct de4x5_private {TYPE_1__ cache; } ;


 int __skb_queue_head (int *,struct sk_buff*) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
de4x5_putb_cache(struct net_device *dev, struct sk_buff *skb)
{
    struct de4x5_private *lp = netdev_priv(dev);

    __skb_queue_head(&lp->cache.queue, skb);
}
