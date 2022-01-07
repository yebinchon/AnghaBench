
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct mwifiex_private {int dummy; } ;
struct TYPE_2__ {int ar_op; } ;
struct mwifiex_arp_eth_header {int * ar_tip; int * ar_sip; TYPE_1__ hdr; } ;
struct ipv6hdr {int daddr; int saddr; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int icmp6_type; } ;
struct ethhdr {int h_proto; } ;


 int ARPOP_REPLY ;
 int ARPOP_REQUEST ;


 int NDISC_NEIGHBOUR_ADVERTISEMENT ;
 int htons (int ) ;
 int memcmp (int *,int *,int) ;
 int ntohs (int ) ;

__attribute__((used)) static bool
mwifiex_discard_gratuitous_arp(struct mwifiex_private *priv,
          struct sk_buff *skb)
{
 const struct mwifiex_arp_eth_header *arp;
 struct ethhdr *eth;
 struct ipv6hdr *ipv6;
 struct icmp6hdr *icmpv6;

 eth = (struct ethhdr *)skb->data;
 switch (ntohs(eth->h_proto)) {
 case 129:
  arp = (void *)(skb->data + sizeof(struct ethhdr));
  if (arp->hdr.ar_op == htons(ARPOP_REPLY) ||
      arp->hdr.ar_op == htons(ARPOP_REQUEST)) {
   if (!memcmp(arp->ar_sip, arp->ar_tip, 4))
    return 1;
  }
  break;
 case 128:
  ipv6 = (void *)(skb->data + sizeof(struct ethhdr));
  icmpv6 = (void *)(skb->data + sizeof(struct ethhdr) +
      sizeof(struct ipv6hdr));
  if (NDISC_NEIGHBOUR_ADVERTISEMENT == icmpv6->icmp6_type) {
   if (!memcmp(&ipv6->saddr, &ipv6->daddr,
        sizeof(struct in6_addr)))
    return 1;
  }
  break;
 default:
  break;
 }

 return 0;
}
