
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_ring {int dummy; } ;


 unsigned int I40E_SKB_PAD ;
 scalar_t__ ring_uses_build_skb (struct i40e_ring*) ;

__attribute__((used)) static inline unsigned int i40e_rx_offset(struct i40e_ring *rx_ring)
{
 return ring_uses_build_skb(rx_ring) ? I40E_SKB_PAD : 0;
}
