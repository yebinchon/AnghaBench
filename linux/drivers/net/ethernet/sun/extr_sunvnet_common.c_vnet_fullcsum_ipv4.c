
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {void* check; } ;
struct tcphdr {void* check; } ;
struct sk_buff {scalar_t__ protocol; int csum_level; void* csum; scalar_t__ len; int ip_summed; } ;
struct iphdr {scalar_t__ protocol; int daddr; int saddr; } ;


 int CHECKSUM_NONE ;
 int ETH_P_IP ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 void* csum_tcpudp_magic (int ,int ,scalar_t__,scalar_t__,void*) ;
 scalar_t__ htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 void* skb_checksum (struct sk_buff*,int,scalar_t__,int ) ;
 int skb_transport_offset (struct sk_buff*) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;

__attribute__((used)) static inline void vnet_fullcsum_ipv4(struct sk_buff *skb)
{
 struct iphdr *iph = ip_hdr(skb);
 int offset = skb_transport_offset(skb);

 if (skb->protocol != htons(ETH_P_IP))
  return;
 if (iph->protocol != IPPROTO_TCP &&
     iph->protocol != IPPROTO_UDP)
  return;
 skb->ip_summed = CHECKSUM_NONE;
 skb->csum_level = 1;
 skb->csum = 0;
 if (iph->protocol == IPPROTO_TCP) {
  struct tcphdr *ptcp = tcp_hdr(skb);

  ptcp->check = 0;
  skb->csum = skb_checksum(skb, offset, skb->len - offset, 0);
  ptcp->check = csum_tcpudp_magic(iph->saddr, iph->daddr,
      skb->len - offset, IPPROTO_TCP,
      skb->csum);
 } else if (iph->protocol == IPPROTO_UDP) {
  struct udphdr *pudp = udp_hdr(skb);

  pudp->check = 0;
  skb->csum = skb_checksum(skb, offset, skb->len - offset, 0);
  pudp->check = csum_tcpudp_magic(iph->saddr, iph->daddr,
      skb->len - offset, IPPROTO_UDP,
      skb->csum);
 }
}
