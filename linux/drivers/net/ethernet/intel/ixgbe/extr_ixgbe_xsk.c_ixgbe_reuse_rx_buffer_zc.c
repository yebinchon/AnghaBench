
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ixgbe_rx_buffer {int * skb; int * addr; int handle; int dma; } ;
struct ixgbe_ring {scalar_t__ next_to_alloc; scalar_t__ count; struct ixgbe_rx_buffer* rx_buffer_info; } ;



__attribute__((used)) static void ixgbe_reuse_rx_buffer_zc(struct ixgbe_ring *rx_ring,
         struct ixgbe_rx_buffer *obi)
{
 u16 nta = rx_ring->next_to_alloc;
 struct ixgbe_rx_buffer *nbi;

 nbi = &rx_ring->rx_buffer_info[rx_ring->next_to_alloc];

 nta++;
 rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;


 nbi->dma = obi->dma;
 nbi->addr = obi->addr;
 nbi->handle = obi->handle;

 obi->addr = ((void*)0);
 obi->skb = ((void*)0);
}
