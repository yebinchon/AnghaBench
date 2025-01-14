
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int daddr; } ;


 TYPE_1__* ip_hdr (struct sk_buff*) ;
 scalar_t__ ipv4_is_lbcast (int ) ;
 scalar_t__ ipv4_is_multicast (int ) ;
 scalar_t__ qdisc_tx_is_default (struct net_device*) ;
 struct sk_buff* vrf_ip_out_direct (struct net_device*,struct sock*,struct sk_buff*) ;
 struct sk_buff* vrf_ip_out_redirect (struct net_device*,struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *vrf_ip_out(struct net_device *vrf_dev,
      struct sock *sk,
      struct sk_buff *skb)
{

 if (ipv4_is_multicast(ip_hdr(skb)->daddr) ||
     ipv4_is_lbcast(ip_hdr(skb)->daddr))
  return skb;

 if (qdisc_tx_is_default(vrf_dev))
  return vrf_ip_out_direct(vrf_dev, sk, skb);

 return vrf_ip_out_redirect(vrf_dev, skb);
}
