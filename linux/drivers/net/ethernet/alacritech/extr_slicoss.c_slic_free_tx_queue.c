
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slic_tx_queue {unsigned int len; struct slic_tx_buffer* txbuffs; int dma_pool; } ;
struct slic_tx_buffer {int skb; int desc_paddr; int desc; } ;
struct slic_device {TYPE_1__* pdev; struct slic_tx_queue txq; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int consume_skb (int ) ;
 int dma_pool_destroy (int ) ;
 int dma_pool_free (int ,int ,int ) ;
 int dma_unmap_addr (struct slic_tx_buffer*,int ) ;
 int dma_unmap_len (struct slic_tx_buffer*,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int kfree (struct slic_tx_buffer*) ;
 int map_addr ;
 int map_len ;

__attribute__((used)) static void slic_free_tx_queue(struct slic_device *sdev)
{
 struct slic_tx_queue *txq = &sdev->txq;
 struct slic_tx_buffer *buff;
 unsigned int i;

 for (i = 0; i < txq->len; i++) {
  buff = &txq->txbuffs[i];
  dma_pool_free(txq->dma_pool, buff->desc, buff->desc_paddr);
  if (!buff->skb)
   continue;

  dma_unmap_single(&sdev->pdev->dev,
     dma_unmap_addr(buff, map_addr),
     dma_unmap_len(buff, map_len), DMA_TO_DEVICE);
  consume_skb(buff->skb);
 }
 dma_pool_destroy(txq->dma_pool);

 kfree(txq->txbuffs);
}
