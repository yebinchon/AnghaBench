
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxbd8 {scalar_t__ bufPtr; scalar_t__ lstatus; } ;
struct gfar_rx_buff {int * page; int dma; } ;
struct gfar_priv_rx_q {int rx_ring_size; struct gfar_rx_buff* rx_buff; int dev; int skb; struct rxbd8* rx_bd_base; } ;


 int DMA_FROM_DEVICE ;
 int PAGE_SIZE ;
 int __free_page (int *) ;
 int dev_kfree_skb (int ) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int kfree (struct gfar_rx_buff*) ;

__attribute__((used)) static void free_skb_rx_queue(struct gfar_priv_rx_q *rx_queue)
{
 int i;

 struct rxbd8 *rxbdp = rx_queue->rx_bd_base;

 dev_kfree_skb(rx_queue->skb);

 for (i = 0; i < rx_queue->rx_ring_size; i++) {
  struct gfar_rx_buff *rxb = &rx_queue->rx_buff[i];

  rxbdp->lstatus = 0;
  rxbdp->bufPtr = 0;
  rxbdp++;

  if (!rxb->page)
   continue;

  dma_unmap_page(rx_queue->dev, rxb->dma,
          PAGE_SIZE, DMA_FROM_DEVICE);
  __free_page(rxb->page);

  rxb->page = ((void*)0);
 }

 kfree(rx_queue->rx_buff);
 rx_queue->rx_buff = ((void*)0);
}
