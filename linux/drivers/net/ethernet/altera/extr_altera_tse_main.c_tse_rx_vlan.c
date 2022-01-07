
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int features; } ;
struct ethhdr {int dummy; } ;


 int ETH_ALEN ;
 int ETH_P_8021Q ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 scalar_t__ VLAN_HLEN ;
 int __vlan_get_tag (struct sk_buff*,int *) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int htons (int ) ;
 int memmove (scalar_t__,struct ethhdr*,int) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static inline void tse_rx_vlan(struct net_device *dev, struct sk_buff *skb)
{
 struct ethhdr *eth_hdr;
 u16 vid;
 if ((dev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
     !__vlan_get_tag(skb, &vid)) {
  eth_hdr = (struct ethhdr *)skb->data;
  memmove(skb->data + VLAN_HLEN, eth_hdr, ETH_ALEN * 2);
  skb_pull(skb, VLAN_HLEN);
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vid);
 }
}
