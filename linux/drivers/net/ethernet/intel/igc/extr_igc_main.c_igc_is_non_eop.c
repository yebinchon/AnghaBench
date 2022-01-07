
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union igc_adv_rx_desc {int dummy; } igc_adv_rx_desc ;
typedef int u32 ;
struct igc_ring {int next_to_clean; int count; } ;


 int IGC_RXD_STAT_EOP ;
 int IGC_RX_DESC (struct igc_ring*,int) ;
 int igc_test_staterr (union igc_adv_rx_desc*,int ) ;
 scalar_t__ likely (int ) ;
 int prefetch (int ) ;

__attribute__((used)) static bool igc_is_non_eop(struct igc_ring *rx_ring,
      union igc_adv_rx_desc *rx_desc)
{
 u32 ntc = rx_ring->next_to_clean + 1;


 ntc = (ntc < rx_ring->count) ? ntc : 0;
 rx_ring->next_to_clean = ntc;

 prefetch(IGC_RX_DESC(rx_ring, ntc));

 if (likely(igc_test_staterr(rx_desc, IGC_RXD_STAT_EOP)))
  return 0;

 return 1;
}
