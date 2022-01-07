
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;




 struct sk_buff* vrf_ip6_rcv (struct net_device*,struct sk_buff*) ;
 struct sk_buff* vrf_ip_rcv (struct net_device*,struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *vrf_l3_rcv(struct net_device *vrf_dev,
      struct sk_buff *skb,
      u16 proto)
{
 switch (proto) {
 case 129:
  return vrf_ip_rcv(vrf_dev, skb);
 case 128:
  return vrf_ip6_rcv(vrf_dev, skb);
 }

 return skb;
}
