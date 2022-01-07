
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ring {int dummy; } ;


 unsigned int IXGBE_SKB_PAD ;
 scalar_t__ ring_uses_build_skb (struct ixgbe_ring*) ;

__attribute__((used)) static inline unsigned int ixgbe_rx_offset(struct ixgbe_ring *rx_ring)
{
 return ring_uses_build_skb(rx_ring) ? IXGBE_SKB_PAD : 0;
}
