
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_ring {int next_to_clean; int count; } ;


 int IXGBE_RX_DESC (struct ixgbe_ring*,int) ;
 int prefetch (int ) ;

__attribute__((used)) static void ixgbe_inc_ntc(struct ixgbe_ring *rx_ring)
{
 u32 ntc = rx_ring->next_to_clean + 1;

 ntc = (ntc < rx_ring->count) ? ntc : 0;
 rx_ring->next_to_clean = ntc;
 prefetch(IXGBE_RX_DESC(rx_ring, ntc));
}
