
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tcp; scalar_t__ v6; scalar_t__ v4; } ;
union Vmxnet3_GenericDesc {TYPE_1__ rcd; } ;
typedef int u32 ;
struct vmxnet3_adapter {int dummy; } ;
struct vlan_ethhdr {scalar_t__ h_vlan_encapsulated_proto; } ;
struct tcphdr {int doff; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct ipv6hdr {scalar_t__ nexthdr; } ;
struct iphdr {scalar_t__ protocol; int ihl; } ;
struct ethhdr {scalar_t__ h_proto; } ;


 int BUG_ON (int) ;
 int ETH_P_8021AD ;
 int ETH_P_8021Q ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ cpu_to_be16 (int ) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32
vmxnet3_get_hdr_len(struct vmxnet3_adapter *adapter, struct sk_buff *skb,
      union Vmxnet3_GenericDesc *gdesc)
{
 u32 hlen, maplen;
 union {
  void *ptr;
  struct ethhdr *eth;
  struct vlan_ethhdr *veth;
  struct iphdr *ipv4;
  struct ipv6hdr *ipv6;
  struct tcphdr *tcp;
 } hdr;
 BUG_ON(gdesc->rcd.tcp == 0);

 maplen = skb_headlen(skb);
 if (unlikely(sizeof(struct iphdr) + sizeof(struct tcphdr) > maplen))
  return 0;

 if (skb->protocol == cpu_to_be16(ETH_P_8021Q) ||
     skb->protocol == cpu_to_be16(ETH_P_8021AD))
  hlen = sizeof(struct vlan_ethhdr);
 else
  hlen = sizeof(struct ethhdr);

 hdr.eth = eth_hdr(skb);
 if (gdesc->rcd.v4) {
  BUG_ON(hdr.eth->h_proto != htons(ETH_P_IP) &&
         hdr.veth->h_vlan_encapsulated_proto != htons(ETH_P_IP));
  hdr.ptr += hlen;
  BUG_ON(hdr.ipv4->protocol != IPPROTO_TCP);
  hlen = hdr.ipv4->ihl << 2;
  hdr.ptr += hdr.ipv4->ihl << 2;
 } else if (gdesc->rcd.v6) {
  BUG_ON(hdr.eth->h_proto != htons(ETH_P_IPV6) &&
         hdr.veth->h_vlan_encapsulated_proto != htons(ETH_P_IPV6));
  hdr.ptr += hlen;



  if (hdr.ipv6->nexthdr != IPPROTO_TCP)
   return sizeof(struct ipv6hdr) + sizeof(struct tcphdr);
  hlen = sizeof(struct ipv6hdr);
  hdr.ptr += sizeof(struct ipv6hdr);
 } else {

  return 0;
 }

 if (hlen + sizeof(struct tcphdr) > maplen)
  return 0;

 return (hlen + (hdr.tcp->doff << 2));
}
