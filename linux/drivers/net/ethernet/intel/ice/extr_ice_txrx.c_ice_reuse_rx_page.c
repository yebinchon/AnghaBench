
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ice_rx_buf {int pagecnt_bias; int page_offset; int page; int dma; } ;
struct ice_ring {size_t next_to_alloc; size_t count; struct ice_rx_buf* rx_buf; } ;



__attribute__((used)) static void
ice_reuse_rx_page(struct ice_ring *rx_ring, struct ice_rx_buf *old_buf)
{
 u16 nta = rx_ring->next_to_alloc;
 struct ice_rx_buf *new_buf;

 new_buf = &rx_ring->rx_buf[nta];


 nta++;
 rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;





 new_buf->dma = old_buf->dma;
 new_buf->page = old_buf->page;
 new_buf->page_offset = old_buf->page_offset;
 new_buf->pagecnt_bias = old_buf->pagecnt_bias;
}
