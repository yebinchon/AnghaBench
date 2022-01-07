
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_tx_queue {int insert_count; TYPE_1__* efx; } ;
struct efx_tx_buffer {unsigned int len; unsigned int dma_addr; int flags; } ;
struct efx_nic_type {unsigned int (* tx_limit_len ) (struct efx_tx_queue*,unsigned int,size_t) ;} ;
typedef unsigned int dma_addr_t ;
struct TYPE_2__ {struct efx_nic_type* type; } ;


 int EFX_TX_BUF_CONT ;
 struct efx_tx_buffer* efx_tx_queue_get_insert_buffer (struct efx_tx_queue*) ;
 unsigned int stub1 (struct efx_tx_queue*,unsigned int,size_t) ;

__attribute__((used)) static struct efx_tx_buffer *efx_tx_map_chunk(struct efx_tx_queue *tx_queue,
           dma_addr_t dma_addr,
           size_t len)
{
 const struct efx_nic_type *nic_type = tx_queue->efx->type;
 struct efx_tx_buffer *buffer;
 unsigned int dma_len;


 do {
  buffer = efx_tx_queue_get_insert_buffer(tx_queue);
  dma_len = nic_type->tx_limit_len(tx_queue, dma_addr, len);

  buffer->len = dma_len;
  buffer->dma_addr = dma_addr;
  buffer->flags = EFX_TX_BUF_CONT;
  len -= dma_len;
  dma_addr += dma_len;
  ++tx_queue->insert_count;
 } while (len);

 return buffer;
}
