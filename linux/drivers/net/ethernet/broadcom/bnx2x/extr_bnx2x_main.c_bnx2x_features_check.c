
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int gso_size; } ;


 int NETIF_F_GSO_MASK ;
 int skb_gso_validate_mac_len (struct sk_buff*,int) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int vlan_features_check (struct sk_buff*,int ) ;
 int vxlan_features_check (struct sk_buff*,int ) ;

__attribute__((used)) static netdev_features_t bnx2x_features_check(struct sk_buff *skb,
           struct net_device *dev,
           netdev_features_t features)
{
 if (unlikely(skb_is_gso(skb) &&
       (skb_shinfo(skb)->gso_size > 9000) &&
       !skb_gso_validate_mac_len(skb, 9700)))
  features &= ~NETIF_F_GSO_MASK;

 features = vlan_features_check(skb, features);
 return vxlan_features_check(skb, features);
}
