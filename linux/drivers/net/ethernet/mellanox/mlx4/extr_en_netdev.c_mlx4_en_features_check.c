
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; scalar_t__ encapsulation; } ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {scalar_t__ vxlan_port; } ;
typedef int netdev_features_t ;
struct TYPE_4__ {int version; } ;
struct TYPE_3__ {scalar_t__ dest; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int NETIF_F_CSUM_MASK ;
 int NETIF_F_GSO_MASK ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 TYPE_1__* udp_hdr (struct sk_buff*) ;
 int vlan_features_check (struct sk_buff*,int) ;
 int vxlan_features_check (struct sk_buff*,int) ;

__attribute__((used)) static netdev_features_t mlx4_en_features_check(struct sk_buff *skb,
      struct net_device *dev,
      netdev_features_t features)
{
 features = vlan_features_check(skb, features);
 features = vxlan_features_check(skb, features);





 if (skb->encapsulation &&
     (skb->ip_summed == CHECKSUM_PARTIAL)) {
  struct mlx4_en_priv *priv = netdev_priv(dev);

  if (!priv->vxlan_port ||
      (ip_hdr(skb)->version != 4) ||
      (udp_hdr(skb)->dest != priv->vxlan_port))
   features &= ~(NETIF_F_CSUM_MASK | NETIF_F_GSO_MASK);
 }

 return features;
}
