
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct tcphdr {int doff; scalar_t__ check; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ len; scalar_t__ data; } ;
struct ipv6hdr {scalar_t__ nexthdr; } ;
struct iphdr {scalar_t__ protocol; int ihl; } ;
struct TYPE_2__ {scalar_t__ gso_size; int gso_segs; int gso_type; } ;


 int DIV_ROUND_UP (scalar_t__,scalar_t__) ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ IPPROTO_TCP ;
 int SKB_GSO_TCPV4 ;
 int SKB_GSO_TCPV6 ;
 scalar_t__ htons (int ) ;
 scalar_t__ ntohs (scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void ibmveth_rx_mss_helper(struct sk_buff *skb, u16 mss, int lrg_pkt)
{
 struct tcphdr *tcph;
 int offset = 0;
 int hdr_len;


 if (skb->protocol == htons(ETH_P_IP)) {
  struct iphdr *iph = (struct iphdr *)skb->data;

  if (iph->protocol == IPPROTO_TCP) {
   offset = iph->ihl * 4;
   skb_shinfo(skb)->gso_type = SKB_GSO_TCPV4;
  } else {
   return;
  }
 } else if (skb->protocol == htons(ETH_P_IPV6)) {
  struct ipv6hdr *iph6 = (struct ipv6hdr *)skb->data;

  if (iph6->nexthdr == IPPROTO_TCP) {
   offset = sizeof(struct ipv6hdr);
   skb_shinfo(skb)->gso_type = SKB_GSO_TCPV6;
  } else {
   return;
  }
 } else {
  return;
 }



 tcph = (struct tcphdr *)(skb->data + offset);
 if (lrg_pkt) {
  skb_shinfo(skb)->gso_size = mss;
 } else if (offset) {
  skb_shinfo(skb)->gso_size = ntohs(tcph->check);
  tcph->check = 0;
 }

 if (skb_shinfo(skb)->gso_size) {
  hdr_len = offset + tcph->doff * 4;
  skb_shinfo(skb)->gso_segs =
    DIV_ROUND_UP(skb->len - hdr_len,
          skb_shinfo(skb)->gso_size);
 }
}
