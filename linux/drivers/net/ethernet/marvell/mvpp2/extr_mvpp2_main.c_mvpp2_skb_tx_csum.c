
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct mvpp2_port {int dummy; } ;
struct ipv6hdr {int nexthdr; } ;
struct iphdr {int ihl; int protocol; } ;
typedef scalar_t__ __be16 ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int MVPP2_TXD_IP_CSUM_DISABLE ;
 int MVPP2_TXD_L4_CSUM_NOT ;
 scalar_t__ htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int mvpp2_txq_desc_csum (int ,scalar_t__,int,int ) ;
 int skb_network_header_len (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 scalar_t__ vlan_get_protocol (struct sk_buff*) ;

__attribute__((used)) static u32 mvpp2_skb_tx_csum(struct mvpp2_port *port, struct sk_buff *skb)
{
 if (skb->ip_summed == CHECKSUM_PARTIAL) {
  int ip_hdr_len = 0;
  u8 l4_proto;
  __be16 l3_proto = vlan_get_protocol(skb);

  if (l3_proto == htons(ETH_P_IP)) {
   struct iphdr *ip4h = ip_hdr(skb);


   ip_hdr_len = ip4h->ihl;
   l4_proto = ip4h->protocol;
  } else if (l3_proto == htons(ETH_P_IPV6)) {
   struct ipv6hdr *ip6h = ipv6_hdr(skb);


   if (skb_network_header_len(skb) > 0)
    ip_hdr_len = (skb_network_header_len(skb) >> 2);
   l4_proto = ip6h->nexthdr;
  } else {
   return MVPP2_TXD_L4_CSUM_NOT;
  }

  return mvpp2_txq_desc_csum(skb_network_offset(skb),
        l3_proto, ip_hdr_len, l4_proto);
 }

 return MVPP2_TXD_L4_CSUM_NOT | MVPP2_TXD_IP_CSUM_DISABLE;
}
