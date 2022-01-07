
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct il_rx_queue {int lock; scalar_t__ free_count; scalar_t__ write_actual; scalar_t__ write; scalar_t__ read; int rx_used; TYPE_2__* pool; int rx_free; } ;
struct TYPE_3__ {int rx_page_order; } ;
struct il_priv {TYPE_1__ hw_params; int pci_dev; } ;
struct TYPE_4__ {int list; int * page; int page_dma; } ;


 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int RX_FREE_BUFFERS ;
 int RX_QUEUE_SIZE ;
 int __il_free_pages (struct il_priv*,int *) ;
 int list_add_tail (int *,int *) ;
 int pci_unmap_page (int ,int ,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
il3945_rx_queue_reset(struct il_priv *il, struct il_rx_queue *rxq)
{
 unsigned long flags;
 int i;
 spin_lock_irqsave(&rxq->lock, flags);
 INIT_LIST_HEAD(&rxq->rx_free);
 INIT_LIST_HEAD(&rxq->rx_used);

 for (i = 0; i < RX_FREE_BUFFERS + RX_QUEUE_SIZE; i++) {


  if (rxq->pool[i].page != ((void*)0)) {
   pci_unmap_page(il->pci_dev, rxq->pool[i].page_dma,
           PAGE_SIZE << il->hw_params.rx_page_order,
           PCI_DMA_FROMDEVICE);
   __il_free_pages(il, rxq->pool[i].page);
   rxq->pool[i].page = ((void*)0);
  }
  list_add_tail(&rxq->pool[i].list, &rxq->rx_used);
 }



 rxq->read = rxq->write = 0;
 rxq->write_actual = 0;
 rxq->free_count = 0;
 spin_unlock_irqrestore(&rxq->lock, flags);
}
