
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mvneta_tx_queue {size_t txq_put_index; struct mvneta_tx_desc* descs; struct sk_buff** tx_skb; } ;
struct mvneta_tx_desc {int command; int data_size; int buf_phys_addr; } ;
struct mvneta_port {TYPE_2__* dev; } ;
typedef int skb_frag_t ;
struct TYPE_6__ {int nr_frags; int * frags; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int MVNETA_TXD_L_DESC ;
 int MVNETA_TXD_Z_PAD ;
 int dma_map_single (int ,void*,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int mvneta_txq_desc_put (struct mvneta_tx_queue*) ;
 int mvneta_txq_inc_put (struct mvneta_tx_queue*) ;
 struct mvneta_tx_desc* mvneta_txq_next_desc_get (struct mvneta_tx_queue*) ;
 void* skb_frag_address (int *) ;
 int skb_frag_size (int *) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int mvneta_tx_frag_process(struct mvneta_port *pp, struct sk_buff *skb,
      struct mvneta_tx_queue *txq)
{
 struct mvneta_tx_desc *tx_desc;
 int i, nr_frags = skb_shinfo(skb)->nr_frags;

 for (i = 0; i < nr_frags; i++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
  void *addr = skb_frag_address(frag);

  tx_desc = mvneta_txq_next_desc_get(txq);
  tx_desc->data_size = skb_frag_size(frag);

  tx_desc->buf_phys_addr =
   dma_map_single(pp->dev->dev.parent, addr,
           tx_desc->data_size, DMA_TO_DEVICE);

  if (dma_mapping_error(pp->dev->dev.parent,
          tx_desc->buf_phys_addr)) {
   mvneta_txq_desc_put(txq);
   goto error;
  }

  if (i == nr_frags - 1) {

   tx_desc->command = MVNETA_TXD_L_DESC | MVNETA_TXD_Z_PAD;
   txq->tx_skb[txq->txq_put_index] = skb;
  } else {

   tx_desc->command = 0;
   txq->tx_skb[txq->txq_put_index] = ((void*)0);
  }
  mvneta_txq_inc_put(txq);
 }

 return 0;

error:



 for (i = i - 1; i >= 0; i--) {
  tx_desc = txq->descs + i;
  dma_unmap_single(pp->dev->dev.parent,
     tx_desc->buf_phys_addr,
     tx_desc->data_size,
     DMA_TO_DEVICE);
  mvneta_txq_desc_put(txq);
 }

 return -ENOMEM;
}
