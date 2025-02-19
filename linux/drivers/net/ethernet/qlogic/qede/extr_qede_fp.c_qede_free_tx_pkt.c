
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u16 ;
struct sk_buff {int len; } ;
struct TYPE_9__ {TYPE_3__* skbs; } ;
struct qede_tx_queue {size_t sw_tx_cons; TYPE_4__ sw_tx_ring; int tx_pbl; int sw_tx_prod; } ;
struct qede_dev {TYPE_2__* pdev; } ;
struct TYPE_6__ {int nbds; } ;
struct eth_tx_bd {TYPE_1__ data; } ;
struct eth_tx_1st_bd {TYPE_1__ data; } ;
struct TYPE_10__ {int nr_frags; } ;
struct TYPE_8__ {int flags; struct sk_buff* skb; } ;
struct TYPE_7__ {int dev; } ;


 int BD_UNMAP_ADDR (struct eth_tx_bd*) ;
 int BD_UNMAP_LEN (struct eth_tx_bd*) ;
 int DMA_TO_DEVICE ;
 int DP_ERR (struct qede_dev*,char*,size_t,size_t,int ) ;
 int QEDE_TSO_SPLIT_BD ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_page (int *,int ,int,int ) ;
 int dma_unmap_single (int *,int ,int,int ) ;
 scalar_t__ qed_chain_consume (int *) ;
 TYPE_5__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int qede_free_tx_pkt(struct qede_dev *edev, struct qede_tx_queue *txq, int *len)
{
 u16 idx = txq->sw_tx_cons;
 struct sk_buff *skb = txq->sw_tx_ring.skbs[idx].skb;
 struct eth_tx_1st_bd *first_bd;
 struct eth_tx_bd *tx_data_bd;
 int bds_consumed = 0;
 int nbds;
 bool data_split = txq->sw_tx_ring.skbs[idx].flags & QEDE_TSO_SPLIT_BD;
 int i, split_bd_len = 0;

 if (unlikely(!skb)) {
  DP_ERR(edev,
         "skb is null for txq idx=%d txq->sw_tx_cons=%d txq->sw_tx_prod=%d\n",
         idx, txq->sw_tx_cons, txq->sw_tx_prod);
  return -1;
 }

 *len = skb->len;

 first_bd = (struct eth_tx_1st_bd *)qed_chain_consume(&txq->tx_pbl);

 bds_consumed++;

 nbds = first_bd->data.nbds;

 if (data_split) {
  struct eth_tx_bd *split = (struct eth_tx_bd *)
   qed_chain_consume(&txq->tx_pbl);
  split_bd_len = BD_UNMAP_LEN(split);
  bds_consumed++;
 }
 dma_unmap_single(&edev->pdev->dev, BD_UNMAP_ADDR(first_bd),
    BD_UNMAP_LEN(first_bd) + split_bd_len, DMA_TO_DEVICE);


 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++, bds_consumed++) {
  tx_data_bd = (struct eth_tx_bd *)
   qed_chain_consume(&txq->tx_pbl);
  dma_unmap_page(&edev->pdev->dev, BD_UNMAP_ADDR(tx_data_bd),
          BD_UNMAP_LEN(tx_data_bd), DMA_TO_DEVICE);
 }

 while (bds_consumed++ < nbds)
  qed_chain_consume(&txq->tx_pbl);


 dev_kfree_skb_any(skb);
 txq->sw_tx_ring.skbs[idx].skb = ((void*)0);
 txq->sw_tx_ring.skbs[idx].flags = 0;

 return 0;
}
