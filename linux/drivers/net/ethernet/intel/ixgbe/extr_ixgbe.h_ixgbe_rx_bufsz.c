
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ring {int state; } ;


 unsigned int IXGBE_MAX_2K_FRAME_BUILD_SKB ;
 unsigned int IXGBE_RXBUFFER_2K ;
 unsigned int IXGBE_RXBUFFER_3K ;
 int __IXGBE_RX_3K_BUFFER ;
 scalar_t__ ring_uses_build_skb (struct ixgbe_ring*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline unsigned int ixgbe_rx_bufsz(struct ixgbe_ring *ring)
{
 if (test_bit(__IXGBE_RX_3K_BUFFER, &ring->state))
  return IXGBE_RXBUFFER_3K;

 if (ring_uses_build_skb(ring))
  return IXGBE_MAX_2K_FRAME_BUILD_SKB;

 return IXGBE_RXBUFFER_2K;
}
