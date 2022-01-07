
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int num_tx_rings_p_up; } ;


 scalar_t__ netdev_get_num_tc (struct net_device*) ;
 int netdev_pick_tx (struct net_device*,struct sk_buff*,int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

u16 mlx4_en_select_queue(struct net_device *dev, struct sk_buff *skb,
    struct net_device *sb_dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 u16 rings_p_up = priv->num_tx_rings_p_up;

 if (netdev_get_num_tc(dev))
  return netdev_pick_tx(dev, skb, ((void*)0));

 return netdev_pick_tx(dev, skb, ((void*)0)) % rings_p_up;
}
