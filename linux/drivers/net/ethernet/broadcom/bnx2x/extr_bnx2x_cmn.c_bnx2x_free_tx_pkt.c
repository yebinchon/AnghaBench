
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct sw_tx_bd {size_t first_bd; int flags; struct sk_buff* skb; } ;
struct sk_buff {scalar_t__ len; int end; } ;
struct eth_tx_start_bd {int nbd; } ;
struct eth_tx_bd {int nbd; } ;
struct bnx2x_fp_txdata {TYPE_1__* tx_desc_ring; int txq_index; struct sw_tx_bd* tx_buf_ring; } ;
struct bnx2x {TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct eth_tx_start_bd reg_bd; struct eth_tx_start_bd start_bd; } ;


 int BD_UNMAP_ADDR (struct eth_tx_start_bd*) ;
 size_t BD_UNMAP_LEN (struct eth_tx_start_bd*) ;
 int BNX2X_ERR (char*) ;
 int BNX2X_HAS_SECOND_PBD ;
 int BNX2X_TSO_SPLIT_BD ;
 int DMA_TO_DEVICE ;
 int DP (int ,char*,int ,size_t,struct sw_tx_bd*,struct sk_buff*) ;
 int MAX_SKB_FRAGS ;
 int NETIF_MSG_TX_DONE ;
 size_t NEXT_TX_IDX (size_t) ;
 size_t TX_BD (size_t) ;
 int WARN_ON (int) ;
 int bnx2x_panic () ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_page (int *,int ,size_t,int ) ;
 int dma_unmap_single (int *,int ,size_t,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ likely (struct sk_buff*) ;
 int prefetch (int *) ;

__attribute__((used)) static u16 bnx2x_free_tx_pkt(struct bnx2x *bp, struct bnx2x_fp_txdata *txdata,
        u16 idx, unsigned int *pkts_compl,
        unsigned int *bytes_compl)
{
 struct sw_tx_bd *tx_buf = &txdata->tx_buf_ring[idx];
 struct eth_tx_start_bd *tx_start_bd;
 struct eth_tx_bd *tx_data_bd;
 struct sk_buff *skb = tx_buf->skb;
 u16 bd_idx = TX_BD(tx_buf->first_bd), new_cons;
 int nbd;
 u16 split_bd_len = 0;


 prefetch(&skb->end);

 DP(NETIF_MSG_TX_DONE, "fp[%d]: pkt_idx %d  buff @(%p)->skb %p\n",
    txdata->txq_index, idx, tx_buf, skb);

 tx_start_bd = &txdata->tx_desc_ring[bd_idx].start_bd;

 nbd = le16_to_cpu(tx_start_bd->nbd) - 1;






 new_cons = nbd + tx_buf->first_bd;


 bd_idx = TX_BD(NEXT_TX_IDX(bd_idx));


 --nbd;
 bd_idx = TX_BD(NEXT_TX_IDX(bd_idx));

 if (tx_buf->flags & BNX2X_HAS_SECOND_PBD) {

  --nbd;
  bd_idx = TX_BD(NEXT_TX_IDX(bd_idx));
 }


 if (tx_buf->flags & BNX2X_TSO_SPLIT_BD) {
  tx_data_bd = &txdata->tx_desc_ring[bd_idx].reg_bd;
  split_bd_len = BD_UNMAP_LEN(tx_data_bd);
  --nbd;
  bd_idx = TX_BD(NEXT_TX_IDX(bd_idx));
 }


 dma_unmap_single(&bp->pdev->dev, BD_UNMAP_ADDR(tx_start_bd),
    BD_UNMAP_LEN(tx_start_bd) + split_bd_len,
    DMA_TO_DEVICE);


 while (nbd > 0) {

  tx_data_bd = &txdata->tx_desc_ring[bd_idx].reg_bd;
  dma_unmap_page(&bp->pdev->dev, BD_UNMAP_ADDR(tx_data_bd),
          BD_UNMAP_LEN(tx_data_bd), DMA_TO_DEVICE);
  if (--nbd)
   bd_idx = TX_BD(NEXT_TX_IDX(bd_idx));
 }


 WARN_ON(!skb);
 if (likely(skb)) {
  (*pkts_compl)++;
  (*bytes_compl) += skb->len;
  dev_kfree_skb_any(skb);
 }

 tx_buf->first_bd = 0;
 tx_buf->skb = ((void*)0);

 return new_cons;
}
