
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {TYPE_3__* skbs; } ;
struct TYPE_5__ {int bd_prod; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct qede_tx_queue {size_t sw_tx_prod; TYPE_4__ sw_tx_ring; TYPE_2__ tx_db; int tx_pbl; int dev; } ;
struct eth_tx_bd {scalar_t__ nbytes; } ;
struct eth_tx_1st_bd {scalar_t__ nbytes; } ;
struct TYPE_7__ {scalar_t__ flags; struct sk_buff* skb; } ;


 int BD_UNMAP_ADDR (struct eth_tx_bd*) ;
 int BD_UNMAP_LEN (struct eth_tx_bd*) ;
 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_page (int ,int ,int,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ qed_chain_produce (int *) ;
 int qed_chain_set_prod (int *,int ,struct eth_tx_bd*) ;

__attribute__((used)) static void qede_free_failed_tx_pkt(struct qede_tx_queue *txq,
        struct eth_tx_1st_bd *first_bd,
        int nbd, bool data_split)
{
 u16 idx = txq->sw_tx_prod;
 struct sk_buff *skb = txq->sw_tx_ring.skbs[idx].skb;
 struct eth_tx_bd *tx_data_bd;
 int i, split_bd_len = 0;


 qed_chain_set_prod(&txq->tx_pbl,
      le16_to_cpu(txq->tx_db.data.bd_prod), first_bd);

 first_bd = (struct eth_tx_1st_bd *)qed_chain_produce(&txq->tx_pbl);

 if (data_split) {
  struct eth_tx_bd *split = (struct eth_tx_bd *)
       qed_chain_produce(&txq->tx_pbl);
  split_bd_len = BD_UNMAP_LEN(split);
  nbd--;
 }

 dma_unmap_single(txq->dev, BD_UNMAP_ADDR(first_bd),
    BD_UNMAP_LEN(first_bd) + split_bd_len, DMA_TO_DEVICE);


 for (i = 0; i < nbd; i++) {
  tx_data_bd = (struct eth_tx_bd *)
   qed_chain_produce(&txq->tx_pbl);
  if (tx_data_bd->nbytes)
   dma_unmap_page(txq->dev,
           BD_UNMAP_ADDR(tx_data_bd),
           BD_UNMAP_LEN(tx_data_bd), DMA_TO_DEVICE);
 }


 qed_chain_set_prod(&txq->tx_pbl,
      le16_to_cpu(txq->tx_db.data.bd_prod), first_bd);


 dev_kfree_skb_any(skb);
 txq->sw_tx_ring.skbs[idx].skb = ((void*)0);
 txq->sw_tx_ring.skbs[idx].flags = 0;
}
