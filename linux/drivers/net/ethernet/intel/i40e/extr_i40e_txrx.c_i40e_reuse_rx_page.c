
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct i40e_rx_buffer {int * page; int pagecnt_bias; int page_offset; int dma; } ;
struct TYPE_2__ {int page_reuse_count; } ;
struct i40e_ring {size_t next_to_alloc; size_t count; TYPE_1__ rx_stats; struct i40e_rx_buffer* rx_bi; } ;



__attribute__((used)) static void i40e_reuse_rx_page(struct i40e_ring *rx_ring,
          struct i40e_rx_buffer *old_buff)
{
 struct i40e_rx_buffer *new_buff;
 u16 nta = rx_ring->next_to_alloc;

 new_buff = &rx_ring->rx_bi[nta];


 nta++;
 rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;


 new_buff->dma = old_buff->dma;
 new_buff->page = old_buff->page;
 new_buff->page_offset = old_buff->page_offset;
 new_buff->pagecnt_bias = old_buff->pagecnt_bias;

 rx_ring->rx_stats.page_reuse_count++;


 old_buff->page = ((void*)0);
}
