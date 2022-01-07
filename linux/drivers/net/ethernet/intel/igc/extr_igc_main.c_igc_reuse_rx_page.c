
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct igc_rx_buffer {int pagecnt_bias; int page_offset; int page; int dma; } ;
struct igc_ring {size_t next_to_alloc; size_t count; struct igc_rx_buffer* rx_buffer_info; } ;



__attribute__((used)) static void igc_reuse_rx_page(struct igc_ring *rx_ring,
         struct igc_rx_buffer *old_buff)
{
 u16 nta = rx_ring->next_to_alloc;
 struct igc_rx_buffer *new_buff;

 new_buff = &rx_ring->rx_buffer_info[nta];


 nta++;
 rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;





 new_buff->dma = old_buff->dma;
 new_buff->page = old_buff->page;
 new_buff->page_offset = old_buff->page_offset;
 new_buff->pagecnt_bias = old_buff->pagecnt_bias;
}
