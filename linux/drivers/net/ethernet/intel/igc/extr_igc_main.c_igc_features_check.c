
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int data; scalar_t__ encapsulation; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 unsigned int IGC_MAX_MAC_HDR_LEN ;
 unsigned int IGC_MAX_NETWORK_HDR_LEN ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_SCTP_CRC ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int NETIF_F_TSO_MANGLEID ;
 unsigned int skb_checksum_start (struct sk_buff*) ;
 unsigned int skb_network_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_features_t
igc_features_check(struct sk_buff *skb, struct net_device *dev,
     netdev_features_t features)
{
 unsigned int network_hdr_len, mac_hdr_len;


 mac_hdr_len = skb_network_header(skb) - skb->data;
 if (unlikely(mac_hdr_len > IGC_MAX_MAC_HDR_LEN))
  return features & ~(NETIF_F_HW_CSUM |
        NETIF_F_SCTP_CRC |
        NETIF_F_HW_VLAN_CTAG_TX |
        NETIF_F_TSO |
        NETIF_F_TSO6);

 network_hdr_len = skb_checksum_start(skb) - skb_network_header(skb);
 if (unlikely(network_hdr_len > IGC_MAX_NETWORK_HDR_LEN))
  return features & ~(NETIF_F_HW_CSUM |
        NETIF_F_SCTP_CRC |
        NETIF_F_TSO |
        NETIF_F_TSO6);




 if (skb->encapsulation && !(features & NETIF_F_TSO_MANGLEID))
  features &= ~NETIF_F_TSO;

 return features;
}
