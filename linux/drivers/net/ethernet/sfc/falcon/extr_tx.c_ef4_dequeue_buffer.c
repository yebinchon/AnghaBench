
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ef4_tx_queue {int read_count; int queue; TYPE_3__* efx; } ;
struct ef4_tx_buffer {int flags; scalar_t__ len; TYPE_2__* skb; scalar_t__ unmap_len; scalar_t__ dma_offset; scalar_t__ dma_addr; } ;
struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_6__ {int net_dev; TYPE_1__* pci_dev; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct TYPE_4__ {struct device dev; } ;


 int DMA_TO_DEVICE ;
 int EF4_TX_BUF_MAP_SINGLE ;
 int EF4_TX_BUF_SKB ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int dma_unmap_page (struct device*,scalar_t__,scalar_t__,int ) ;
 int dma_unmap_single (struct device*,scalar_t__,scalar_t__,int ) ;
 int netif_vdbg (TYPE_3__*,int ,int ,char*,int ,int ) ;
 int tx_done ;

__attribute__((used)) static void ef4_dequeue_buffer(struct ef4_tx_queue *tx_queue,
          struct ef4_tx_buffer *buffer,
          unsigned int *pkts_compl,
          unsigned int *bytes_compl)
{
 if (buffer->unmap_len) {
  struct device *dma_dev = &tx_queue->efx->pci_dev->dev;
  dma_addr_t unmap_addr = buffer->dma_addr - buffer->dma_offset;
  if (buffer->flags & EF4_TX_BUF_MAP_SINGLE)
   dma_unmap_single(dma_dev, unmap_addr, buffer->unmap_len,
      DMA_TO_DEVICE);
  else
   dma_unmap_page(dma_dev, unmap_addr, buffer->unmap_len,
           DMA_TO_DEVICE);
  buffer->unmap_len = 0;
 }

 if (buffer->flags & EF4_TX_BUF_SKB) {
  (*pkts_compl)++;
  (*bytes_compl) += buffer->skb->len;
  dev_consume_skb_any((struct sk_buff *)buffer->skb);
  netif_vdbg(tx_queue->efx, tx_done, tx_queue->efx->net_dev,
      "TX queue %d transmission id %x complete\n",
      tx_queue->queue, tx_queue->read_count);
 }

 buffer->len = 0;
 buffer->flags = 0;
}
