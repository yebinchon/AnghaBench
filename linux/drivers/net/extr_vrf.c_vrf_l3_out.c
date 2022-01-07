
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;




 struct sk_buff* vrf_ip6_out (struct net_device*,struct sock*,struct sk_buff*) ;
 struct sk_buff* vrf_ip_out (struct net_device*,struct sock*,struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *vrf_l3_out(struct net_device *vrf_dev,
      struct sock *sk,
      struct sk_buff *skb,
      u16 proto)
{
 switch (proto) {
 case 129:
  return vrf_ip_out(vrf_dev, sk, skb);
 case 128:
  return vrf_ip6_out(vrf_dev, sk, skb);
 }

 return skb;
}
