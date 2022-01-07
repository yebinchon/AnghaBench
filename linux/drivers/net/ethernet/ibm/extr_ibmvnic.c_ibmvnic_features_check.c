
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int gso_size; int gso_segs; } ;


 int NETIF_F_GSO_MASK ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static netdev_features_t ibmvnic_features_check(struct sk_buff *skb,
      struct net_device *dev,
      netdev_features_t features)
{




 if (skb_is_gso(skb)) {
  if (skb_shinfo(skb)->gso_size < 224 ||
      skb_shinfo(skb)->gso_segs == 1)
   features &= ~NETIF_F_GSO_MASK;
 }

 return features;
}
