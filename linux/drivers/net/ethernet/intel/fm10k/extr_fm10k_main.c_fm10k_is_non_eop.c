
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union fm10k_rx_desc {int dummy; } fm10k_rx_desc ;
typedef int u32 ;
struct fm10k_ring {int next_to_clean; int count; } ;


 int FM10K_RXD_STATUS_EOP ;
 int FM10K_RX_DESC (struct fm10k_ring*,int) ;
 int fm10k_test_staterr (union fm10k_rx_desc*,int ) ;
 scalar_t__ likely (int ) ;
 int prefetch (int ) ;

__attribute__((used)) static bool fm10k_is_non_eop(struct fm10k_ring *rx_ring,
        union fm10k_rx_desc *rx_desc)
{
 u32 ntc = rx_ring->next_to_clean + 1;


 ntc = (ntc < rx_ring->count) ? ntc : 0;
 rx_ring->next_to_clean = ntc;

 prefetch(FM10K_RX_DESC(rx_ring, ntc));

 if (likely(fm10k_test_staterr(rx_desc, FM10K_RXD_STATUS_EOP)))
  return 0;

 return 1;
}
