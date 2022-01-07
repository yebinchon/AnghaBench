
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct fm10k_nvgre_hdr {int flags; int tni; } ;
struct ethhdr {int dummy; } ;


 int ETH_P_IP ;
 int FM10K_NVGRE_RESERVED0_FLAGS ;
 int NVGRE_TNI ;
 scalar_t__ htons (int ) ;
 int ip_hdrlen (struct sk_buff*) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 scalar_t__ vlan_get_protocol (struct sk_buff*) ;

__attribute__((used)) static struct ethhdr *fm10k_gre_is_nvgre(struct sk_buff *skb)
{
 struct fm10k_nvgre_hdr *nvgre_hdr;
 int hlen = ip_hdrlen(skb);


 if (vlan_get_protocol(skb) != htons(ETH_P_IP))
  return ((void*)0);


 nvgre_hdr = (struct fm10k_nvgre_hdr *)(skb_network_header(skb) + hlen);


 if (nvgre_hdr->flags & FM10K_NVGRE_RESERVED0_FLAGS)
  return ((void*)0);


 if (nvgre_hdr->flags & NVGRE_TNI)
  return (struct ethhdr *)(nvgre_hdr + 1);

 return (struct ethhdr *)(&nvgre_hdr->tni);
}
