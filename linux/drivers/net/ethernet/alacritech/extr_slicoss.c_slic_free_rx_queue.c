
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slic_rx_queue {unsigned int len; struct slic_rx_buffer* rxbuffs; } ;
struct slic_rx_buffer {int skb; } ;
struct slic_device {TYPE_1__* pdev; struct slic_rx_queue rxq; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int consume_skb (int ) ;
 int dma_unmap_addr (struct slic_rx_buffer*,int ) ;
 int dma_unmap_len (struct slic_rx_buffer*,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int kfree (struct slic_rx_buffer*) ;
 int map_addr ;
 int map_len ;

__attribute__((used)) static void slic_free_rx_queue(struct slic_device *sdev)
{
 struct slic_rx_queue *rxq = &sdev->rxq;
 struct slic_rx_buffer *buff;
 unsigned int i;


 for (i = 0; i < rxq->len; i++) {
  buff = &rxq->rxbuffs[i];

  if (!buff->skb)
   continue;

  dma_unmap_single(&sdev->pdev->dev,
     dma_unmap_addr(buff, map_addr),
     dma_unmap_len(buff, map_len),
     DMA_FROM_DEVICE);
  consume_skb(buff->skb);
 }
 kfree(rxq->rxbuffs);
}
