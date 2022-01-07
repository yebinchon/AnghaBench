
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_ring {int dummy; } ;


 unsigned int IGC_SKB_PAD ;
 scalar_t__ ring_uses_build_skb (struct igc_ring*) ;

__attribute__((used)) static inline unsigned int igc_rx_offset(struct igc_ring *rx_ring)
{
 return ring_uses_build_skb(rx_ring) ? IGC_SKB_PAD : 0;
}
