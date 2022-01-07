
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ encapsulation; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_CSUM_MASK ;
 int NETIF_F_GSO_MASK ;
 scalar_t__ mlx5e_ipsec_feature_check (struct sk_buff*,struct net_device*,int) ;
 int mlx5e_tunnel_features_check (struct mlx5e_priv*,struct sk_buff*,int) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int vlan_features_check (struct sk_buff*,int) ;
 int vxlan_features_check (struct sk_buff*,int) ;

netdev_features_t mlx5e_features_check(struct sk_buff *skb,
           struct net_device *netdev,
           netdev_features_t features)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);

 features = vlan_features_check(skb, features);
 features = vxlan_features_check(skb, features);







 if (skb->encapsulation &&
     (features & NETIF_F_CSUM_MASK || features & NETIF_F_GSO_MASK))
  return mlx5e_tunnel_features_check(priv, skb, features);

 return features;
}
