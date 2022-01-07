
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_ring {int dummy; } ;


 unsigned int IGB_SKB_PAD ;
 scalar_t__ ring_uses_build_skb (struct igb_ring*) ;

__attribute__((used)) static inline unsigned int igb_rx_offset(struct igb_ring *rx_ring)
{
 return ring_uses_build_skb(rx_ring) ? IGB_SKB_PAD : 0;
}
