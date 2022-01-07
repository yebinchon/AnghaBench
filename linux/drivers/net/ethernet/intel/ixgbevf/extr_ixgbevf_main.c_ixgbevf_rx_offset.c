
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_ring {int dummy; } ;


 unsigned int IXGBEVF_SKB_PAD ;
 scalar_t__ ring_uses_build_skb (struct ixgbevf_ring*) ;

__attribute__((used)) static inline unsigned int ixgbevf_rx_offset(struct ixgbevf_ring *rx_ring)
{
 return ring_uses_build_skb(rx_ring) ? IXGBEVF_SKB_PAD : 0;
}
