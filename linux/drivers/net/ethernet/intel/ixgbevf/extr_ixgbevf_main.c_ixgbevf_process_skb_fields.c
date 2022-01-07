
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vlan; } ;
struct TYPE_4__ {TYPE_1__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_2__ wb; } ;
typedef int u16 ;
struct sk_buff {int protocol; } ;
struct ixgbevf_ring {int netdev; } ;


 int ETH_P_8021Q ;
 int IXGBE_RXDADV_STAT_SECP ;
 int IXGBE_RXD_STAT_VP ;
 int VLAN_VID_MASK ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int htons (int ) ;
 int ixgbevf_ipsec_rx (struct ixgbevf_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 int ixgbevf_rx_checksum (struct ixgbevf_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 int ixgbevf_rx_hash (struct ixgbevf_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 scalar_t__ ixgbevf_test_staterr (union ixgbe_adv_rx_desc*,int ) ;
 int le16_to_cpu (int ) ;
 unsigned long* netdev_priv (int ) ;
 scalar_t__ test_bit (int,unsigned long*) ;

__attribute__((used)) static void ixgbevf_process_skb_fields(struct ixgbevf_ring *rx_ring,
           union ixgbe_adv_rx_desc *rx_desc,
           struct sk_buff *skb)
{
 ixgbevf_rx_hash(rx_ring, rx_desc, skb);
 ixgbevf_rx_checksum(rx_ring, rx_desc, skb);

 if (ixgbevf_test_staterr(rx_desc, IXGBE_RXD_STAT_VP)) {
  u16 vid = le16_to_cpu(rx_desc->wb.upper.vlan);
  unsigned long *active_vlans = netdev_priv(rx_ring->netdev);

  if (test_bit(vid & VLAN_VID_MASK, active_vlans))
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vid);
 }

 if (ixgbevf_test_staterr(rx_desc, IXGBE_RXDADV_STAT_SECP))
  ixgbevf_ipsec_rx(rx_ring, rx_desc, skb);

 skb->protocol = eth_type_trans(skb, rx_ring->netdev);
}
