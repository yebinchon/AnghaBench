
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct i40e_rx_buffer {int * addr; int handle; int dma; } ;
struct i40e_ring {size_t next_to_alloc; scalar_t__ count; struct i40e_rx_buffer* rx_bi; } ;



__attribute__((used)) static void i40e_reuse_rx_buffer_zc(struct i40e_ring *rx_ring,
        struct i40e_rx_buffer *old_bi)
{
 struct i40e_rx_buffer *new_bi = &rx_ring->rx_bi[rx_ring->next_to_alloc];
 u16 nta = rx_ring->next_to_alloc;


 nta++;
 rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;


 new_bi->dma = old_bi->dma;
 new_bi->addr = old_bi->addr;
 new_bi->handle = old_bi->handle;

 old_bi->addr = ((void*)0);
}
