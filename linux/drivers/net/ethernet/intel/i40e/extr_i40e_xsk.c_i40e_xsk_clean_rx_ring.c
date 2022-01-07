
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct i40e_rx_buffer {int * addr; int handle; } ;
struct i40e_ring {size_t count; int xsk_umem; struct i40e_rx_buffer* rx_bi; } ;


 int xsk_umem_fq_reuse (int ,int ) ;

void i40e_xsk_clean_rx_ring(struct i40e_ring *rx_ring)
{
 u16 i;

 for (i = 0; i < rx_ring->count; i++) {
  struct i40e_rx_buffer *rx_bi = &rx_ring->rx_bi[i];

  if (!rx_bi->addr)
   continue;

  xsk_umem_fq_reuse(rx_ring->xsk_umem, rx_bi->handle);
  rx_bi->addr = ((void*)0);
 }
}
