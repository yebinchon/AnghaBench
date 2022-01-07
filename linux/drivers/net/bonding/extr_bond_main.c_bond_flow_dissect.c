
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ protocol; } ;
struct ipv6hdr {int nexthdr; } ;
struct iphdr {int ihl; int protocol; } ;
struct TYPE_4__ {int ports; } ;
struct flow_keys {TYPE_2__ ports; } ;
struct TYPE_3__ {scalar_t__ xmit_policy; } ;
struct bonding {TYPE_1__ params; } ;


 scalar_t__ BOND_XMIT_POLICY_LAYER23 ;
 scalar_t__ BOND_XMIT_POLICY_LAYER34 ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_is_fragment (struct iphdr const*) ;
 int iph_to_flow_copy_v4addrs (struct flow_keys*,struct iphdr const*) ;
 int iph_to_flow_copy_v6addrs (struct flow_keys*,struct ipv6hdr const*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_flow_dissect_flow_keys (struct sk_buff*,struct flow_keys*,int ) ;
 int skb_flow_get_ports (struct sk_buff*,int,int) ;
 int skb_network_offset (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool bond_flow_dissect(struct bonding *bond, struct sk_buff *skb,
         struct flow_keys *fk)
{
 const struct ipv6hdr *iph6;
 const struct iphdr *iph;
 int noff, proto = -1;

 if (bond->params.xmit_policy > BOND_XMIT_POLICY_LAYER23)
  return skb_flow_dissect_flow_keys(skb, fk, 0);

 fk->ports.ports = 0;
 noff = skb_network_offset(skb);
 if (skb->protocol == htons(ETH_P_IP)) {
  if (unlikely(!pskb_may_pull(skb, noff + sizeof(*iph))))
   return 0;
  iph = ip_hdr(skb);
  iph_to_flow_copy_v4addrs(fk, iph);
  noff += iph->ihl << 2;
  if (!ip_is_fragment(iph))
   proto = iph->protocol;
 } else if (skb->protocol == htons(ETH_P_IPV6)) {
  if (unlikely(!pskb_may_pull(skb, noff + sizeof(*iph6))))
   return 0;
  iph6 = ipv6_hdr(skb);
  iph_to_flow_copy_v6addrs(fk, iph6);
  noff += sizeof(*iph6);
  proto = iph6->nexthdr;
 } else {
  return 0;
 }
 if (bond->params.xmit_policy == BOND_XMIT_POLICY_LAYER34 && proto >= 0)
  fk->ports.ports = skb_flow_get_ports(skb, noff, proto);

 return 1;
}
