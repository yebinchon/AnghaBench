
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int vlan_features_check (struct sk_buff*,int ) ;
 int vxlan_features_check (struct sk_buff*,int ) ;

__attribute__((used)) static netdev_features_t xgbe_features_check(struct sk_buff *skb,
          struct net_device *netdev,
          netdev_features_t features)
{
 features = vlan_features_check(skb, features);
 features = vxlan_features_check(skb, features);

 return features;
}
