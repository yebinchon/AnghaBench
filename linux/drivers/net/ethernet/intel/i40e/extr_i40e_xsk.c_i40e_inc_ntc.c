
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_ring {int next_to_clean; int count; } ;


 int I40E_RX_DESC (struct i40e_ring*,int) ;
 int prefetch (int ) ;

__attribute__((used)) static void i40e_inc_ntc(struct i40e_ring *rx_ring)
{
 u32 ntc = rx_ring->next_to_clean + 1;

 ntc = (ntc < rx_ring->count) ? ntc : 0;
 rx_ring->next_to_clean = ntc;
 prefetch(I40E_RX_DESC(rx_ring, ntc));
}
