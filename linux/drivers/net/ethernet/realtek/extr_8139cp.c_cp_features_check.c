
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {scalar_t__ gso_size; } ;


 scalar_t__ MSSMask ;
 int NETIF_F_TSO ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int vlan_features_check (struct sk_buff*,int ) ;

__attribute__((used)) static netdev_features_t cp_features_check(struct sk_buff *skb,
        struct net_device *dev,
        netdev_features_t features)
{
 if (skb_shinfo(skb)->gso_size > MSSMask)
  features &= ~NETIF_F_TSO;

 return vlan_features_check(skb, features);
}
