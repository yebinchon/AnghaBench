
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; int ip_summed; struct net_device* dev; } ;
struct net_device {int features; } ;
struct iphdr {scalar_t__ protocol; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_P_IP ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int NETIF_F_RXCSUM ;
 scalar_t__ htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_is_fragment (struct iphdr*) ;

__attribute__((used)) static void xgene_enet_rx_csum(struct sk_buff *skb)
{
 struct net_device *ndev = skb->dev;
 struct iphdr *iph = ip_hdr(skb);

 if (!(ndev->features & NETIF_F_RXCSUM))
  return;

 if (skb->protocol != htons(ETH_P_IP))
  return;

 if (ip_is_fragment(iph))
  return;

 if (iph->protocol != IPPROTO_TCP && iph->protocol != IPPROTO_UDP)
  return;

 skb->ip_summed = CHECKSUM_UNNECESSARY;
}
