
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct sk_buff {int dummy; } ;
struct ixgbe_ring {int dummy; } ;



__attribute__((used)) static inline void ixgbe_ipsec_rx(struct ixgbe_ring *rx_ring,
      union ixgbe_adv_rx_desc *rx_desc,
      struct sk_buff *skb) { }
