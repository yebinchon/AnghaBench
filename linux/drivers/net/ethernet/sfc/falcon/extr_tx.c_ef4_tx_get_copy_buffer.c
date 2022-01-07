
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ef4_tx_queue {int efx; struct ef4_buffer* cb_page; } ;
struct ef4_tx_buffer {scalar_t__ unmap_len; scalar_t__ dma_addr; } ;
struct ef4_buffer {scalar_t__ addr; scalar_t__ dma_addr; } ;


 unsigned int EF4_TX_CB_ORDER ;
 int GFP_ATOMIC ;
 unsigned int NET_IP_ALIGN ;
 unsigned int PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ ef4_nic_alloc_buffer (int ,struct ef4_buffer*,int,int ) ;
 unsigned int ef4_tx_queue_get_insert_index (struct ef4_tx_queue*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline u8 *ef4_tx_get_copy_buffer(struct ef4_tx_queue *tx_queue,
      struct ef4_tx_buffer *buffer)
{
 unsigned int index = ef4_tx_queue_get_insert_index(tx_queue);
 struct ef4_buffer *page_buf =
  &tx_queue->cb_page[index >> (PAGE_SHIFT - EF4_TX_CB_ORDER)];
 unsigned int offset =
  ((index << EF4_TX_CB_ORDER) + NET_IP_ALIGN) & (PAGE_SIZE - 1);

 if (unlikely(!page_buf->addr) &&
     ef4_nic_alloc_buffer(tx_queue->efx, page_buf, PAGE_SIZE,
     GFP_ATOMIC))
  return ((void*)0);
 buffer->dma_addr = page_buf->dma_addr + offset;
 buffer->unmap_len = 0;
 return (u8 *)page_buf->addr + offset;
}
