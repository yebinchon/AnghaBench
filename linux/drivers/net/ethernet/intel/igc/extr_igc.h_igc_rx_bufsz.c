
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_ring {int dummy; } ;


 unsigned int IGC_MAX_FRAME_BUILD_SKB ;
 unsigned int IGC_RXBUFFER_2048 ;
 unsigned int IGC_RXBUFFER_3072 ;
 unsigned int IGC_TS_HDR_LEN ;
 scalar_t__ ring_uses_build_skb (struct igc_ring*) ;
 scalar_t__ ring_uses_large_buffer (struct igc_ring*) ;

__attribute__((used)) static inline unsigned int igc_rx_bufsz(struct igc_ring *ring)
{

 if (ring_uses_large_buffer(ring))
  return IGC_RXBUFFER_3072;

 if (ring_uses_build_skb(ring))
  return IGC_MAX_FRAME_BUILD_SKB + IGC_TS_HDR_LEN;

 return IGC_RXBUFFER_2048;
}
