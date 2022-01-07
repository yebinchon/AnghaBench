
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct sk_buff {int dummy; } ;
struct ixgbe_ring {int last_rx_timestamp; int q_vector; } ;


 int IXGBE_RXDADV_STAT_TS ;
 int IXGBE_RXD_STAT_TSIP ;
 int ixgbe_ptp_rx_pktstamp (int ,struct sk_buff*) ;
 int ixgbe_ptp_rx_rgtstamp (int ,struct sk_buff*) ;
 int ixgbe_test_staterr (union ixgbe_adv_rx_desc*,int ) ;
 int jiffies ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void ixgbe_ptp_rx_hwtstamp(struct ixgbe_ring *rx_ring,
      union ixgbe_adv_rx_desc *rx_desc,
      struct sk_buff *skb)
{
 if (unlikely(ixgbe_test_staterr(rx_desc, IXGBE_RXD_STAT_TSIP))) {
  ixgbe_ptp_rx_pktstamp(rx_ring->q_vector, skb);
  return;
 }

 if (unlikely(!ixgbe_test_staterr(rx_desc, IXGBE_RXDADV_STAT_TS)))
  return;

 ixgbe_ptp_rx_rgtstamp(rx_ring->q_vector, skb);




 rx_ring->last_rx_timestamp = jiffies;
}
