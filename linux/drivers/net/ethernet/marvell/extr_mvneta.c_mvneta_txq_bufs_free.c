
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct netdev_queue {int dummy; } ;
struct mvneta_tx_queue {int txq_get_index; struct sk_buff** tx_skb; struct mvneta_tx_desc* descs; } ;
struct mvneta_tx_desc {int data_size; int buf_phys_addr; } ;
struct mvneta_port {TYPE_2__* dev; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int DMA_TO_DEVICE ;
 int IS_TSO_HEADER (struct mvneta_tx_queue*,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int mvneta_txq_inc_get (struct mvneta_tx_queue*) ;
 int netdev_tx_completed_queue (struct netdev_queue*,unsigned int,unsigned int) ;

__attribute__((used)) static void mvneta_txq_bufs_free(struct mvneta_port *pp,
     struct mvneta_tx_queue *txq, int num,
     struct netdev_queue *nq)
{
 unsigned int bytes_compl = 0, pkts_compl = 0;
 int i;

 for (i = 0; i < num; i++) {
  struct mvneta_tx_desc *tx_desc = txq->descs +
   txq->txq_get_index;
  struct sk_buff *skb = txq->tx_skb[txq->txq_get_index];

  if (skb) {
   bytes_compl += skb->len;
   pkts_compl++;
  }

  mvneta_txq_inc_get(txq);

  if (!IS_TSO_HEADER(txq, tx_desc->buf_phys_addr))
   dma_unmap_single(pp->dev->dev.parent,
      tx_desc->buf_phys_addr,
      tx_desc->data_size, DMA_TO_DEVICE);
  if (!skb)
   continue;
  dev_kfree_skb_any(skb);
 }

 netdev_tx_completed_queue(nq, pkts_compl, bytes_compl);
}
