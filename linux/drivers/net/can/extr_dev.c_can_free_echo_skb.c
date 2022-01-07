
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct can_priv {unsigned int echo_skb_max; int ** echo_skb; } ;


 int BUG_ON (int) ;
 int dev_kfree_skb_any (int *) ;
 struct can_priv* netdev_priv (struct net_device*) ;

void can_free_echo_skb(struct net_device *dev, unsigned int idx)
{
 struct can_priv *priv = netdev_priv(dev);

 BUG_ON(idx >= priv->echo_skb_max);

 if (priv->echo_skb[idx]) {
  dev_kfree_skb_any(priv->echo_skb[idx]);
  priv->echo_skb[idx] = ((void*)0);
 }
}
