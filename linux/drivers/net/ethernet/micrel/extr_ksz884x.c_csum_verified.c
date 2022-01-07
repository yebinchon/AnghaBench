
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned short protocol; int ip_summed; } ;
struct iphdr {unsigned short tot_len; scalar_t__ protocol; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_P_8021Q ;
 int ETH_P_IP ;
 scalar_t__ IPPROTO_TCP ;
 int VLAN_HLEN ;
 unsigned short htons (int ) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,int ) ;

__attribute__((used)) static inline void csum_verified(struct sk_buff *skb)
{
 unsigned short protocol;
 struct iphdr *iph;

 protocol = skb->protocol;
 skb_reset_network_header(skb);
 iph = (struct iphdr *) skb_network_header(skb);
 if (protocol == htons(ETH_P_8021Q)) {
  protocol = iph->tot_len;
  skb_set_network_header(skb, VLAN_HLEN);
  iph = (struct iphdr *) skb_network_header(skb);
 }
 if (protocol == htons(ETH_P_IP)) {
  if (iph->protocol == IPPROTO_TCP)
   skb->ip_summed = CHECKSUM_UNNECESSARY;
 }
}
