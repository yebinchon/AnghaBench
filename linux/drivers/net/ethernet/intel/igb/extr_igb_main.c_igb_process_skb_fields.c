
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vlan; } ;
struct TYPE_4__ {TYPE_1__ upper; } ;
union e1000_adv_rx_desc {TYPE_2__ wb; } ;
typedef int u16 ;
struct sk_buff {int protocol; } ;
struct net_device {int features; } ;
struct igb_ring {struct net_device* netdev; int queue_index; int flags; int q_vector; } ;


 int E1000_RXDADV_STAT_TS ;
 int E1000_RXDADV_STAT_TSIP ;
 int E1000_RXDEXT_STATERR_LB ;
 int E1000_RXD_STAT_VP ;
 int ETH_P_8021Q ;
 int IGB_RING_FLAG_RX_LB_VLAN_BSWAP ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int be16_to_cpu (int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int htons (int ) ;
 int igb_ptp_rx_rgtstamp (int ,struct sk_buff*) ;
 int igb_rx_checksum (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ;
 int igb_rx_hash (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ;
 scalar_t__ igb_test_staterr (union e1000_adv_rx_desc*,int ) ;
 int le16_to_cpu (int ) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void igb_process_skb_fields(struct igb_ring *rx_ring,
       union e1000_adv_rx_desc *rx_desc,
       struct sk_buff *skb)
{
 struct net_device *dev = rx_ring->netdev;

 igb_rx_hash(rx_ring, rx_desc, skb);

 igb_rx_checksum(rx_ring, rx_desc, skb);

 if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TS) &&
     !igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP))
  igb_ptp_rx_rgtstamp(rx_ring->q_vector, skb);

 if ((dev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
     igb_test_staterr(rx_desc, E1000_RXD_STAT_VP)) {
  u16 vid;

  if (igb_test_staterr(rx_desc, E1000_RXDEXT_STATERR_LB) &&
      test_bit(IGB_RING_FLAG_RX_LB_VLAN_BSWAP, &rx_ring->flags))
   vid = be16_to_cpu(rx_desc->wb.upper.vlan);
  else
   vid = le16_to_cpu(rx_desc->wb.upper.vlan);

  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vid);
 }

 skb_record_rx_queue(skb, rx_ring->queue_index);

 skb->protocol = eth_type_trans(skb, rx_ring->netdev);
}
