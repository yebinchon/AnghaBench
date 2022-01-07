
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef int u32 ;
struct ixgbevf_ring {int next_to_clean; int count; } ;


 int IXGBEVF_RX_DESC (struct ixgbevf_ring*,int) ;
 int IXGBE_RXD_STAT_EOP ;
 int ixgbevf_test_staterr (union ixgbe_adv_rx_desc*,int ) ;
 scalar_t__ likely (int ) ;
 int prefetch (int ) ;

__attribute__((used)) static bool ixgbevf_is_non_eop(struct ixgbevf_ring *rx_ring,
          union ixgbe_adv_rx_desc *rx_desc)
{
 u32 ntc = rx_ring->next_to_clean + 1;


 ntc = (ntc < rx_ring->count) ? ntc : 0;
 rx_ring->next_to_clean = ntc;

 prefetch(IXGBEVF_RX_DESC(rx_ring, ntc));

 if (likely(ixgbevf_test_staterr(rx_desc, IXGBE_RXD_STAT_EOP)))
  return 0;

 return 1;
}
