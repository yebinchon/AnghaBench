
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_ring {int dummy; } ;


 unsigned int IXGBEVF_MAX_FRAME_BUILD_SKB ;
 unsigned int IXGBEVF_RXBUFFER_2048 ;
 unsigned int IXGBEVF_RXBUFFER_3072 ;
 scalar_t__ ring_uses_build_skb (struct ixgbevf_ring*) ;
 scalar_t__ ring_uses_large_buffer (struct ixgbevf_ring*) ;

__attribute__((used)) static inline unsigned int ixgbevf_rx_bufsz(struct ixgbevf_ring *ring)
{

 if (ring_uses_large_buffer(ring))
  return IXGBEVF_RXBUFFER_3072;

 if (ring_uses_build_skb(ring))
  return IXGBEVF_MAX_FRAME_BUILD_SKB;

 return IXGBEVF_RXBUFFER_2048;
}
