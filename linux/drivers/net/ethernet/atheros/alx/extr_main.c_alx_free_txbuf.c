
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alx_tx_queue {int dev; struct alx_buffer* bufs; } ;
struct alx_buffer {int * skb; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma ;
 int dma_unmap_addr (struct alx_buffer*,int ) ;
 scalar_t__ dma_unmap_len (struct alx_buffer*,int ) ;
 int dma_unmap_len_set (struct alx_buffer*,int ,int ) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int size ;

__attribute__((used)) static void alx_free_txbuf(struct alx_tx_queue *txq, int entry)
{
 struct alx_buffer *txb = &txq->bufs[entry];

 if (dma_unmap_len(txb, size)) {
  dma_unmap_single(txq->dev,
     dma_unmap_addr(txb, dma),
     dma_unmap_len(txb, size),
     DMA_TO_DEVICE);
  dma_unmap_len_set(txb, size, 0);
 }

 if (txb->skb) {
  dev_kfree_skb_any(txb->skb);
  txb->skb = ((void*)0);
 }
}
