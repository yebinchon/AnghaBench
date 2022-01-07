
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct tx_queue {scalar_t__ tx_ring_size; scalar_t__ tx_desc_count; scalar_t__ tx_curr_desc; int index; int tx_skb; int * tx_desc_mapping; struct tx_desc* tx_desc_area; } ;
struct tx_desc {int byte_cnt; int cmd_sts; int buf_ptr; scalar_t__ l4i_chk; } ;
struct sk_buff {int len; int data; } ;
struct net_device {int dummy; } ;
struct mv643xx_eth_private {int work_tx_end; TYPE_2__* dev; } ;
struct TYPE_6__ {int nr_frags; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int BUFFER_OWNED_BY_DMA ;
 int DESC_DMA_MAP_SINGLE ;
 int DMA_TO_DEVICE ;
 int EBUSY ;
 int GEN_CRC ;
 scalar_t__ MAX_SKB_FRAGS ;
 int TX_ENABLE_INTERRUPT ;
 int TX_FIRST_DESC ;
 int TX_LAST_DESC ;
 int ZERO_PADDING ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int dma_map_single (int ,int ,int,int ) ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (struct net_device*,char*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int skb_tx_csum (struct mv643xx_eth_private*,struct sk_buff*,scalar_t__*,int*,int) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int txq_enable (struct tx_queue*) ;
 int txq_submit_frag_skb (struct tx_queue*,struct sk_buff*) ;
 struct mv643xx_eth_private* txq_to_mp (struct tx_queue*) ;
 int wmb () ;

__attribute__((used)) static int txq_submit_skb(struct tx_queue *txq, struct sk_buff *skb,
     struct net_device *dev)
{
 struct mv643xx_eth_private *mp = txq_to_mp(txq);
 int nr_frags = skb_shinfo(skb)->nr_frags;
 int tx_index;
 struct tx_desc *desc;
 u32 cmd_sts;
 u16 l4i_chk;
 int length, ret;

 cmd_sts = 0;
 l4i_chk = 0;

 if (txq->tx_ring_size - txq->tx_desc_count < MAX_SKB_FRAGS + 1) {
  if (net_ratelimit())
   netdev_err(dev, "tx queue full?!\n");
  return -EBUSY;
 }

 ret = skb_tx_csum(mp, skb, &l4i_chk, &cmd_sts, skb->len);
 if (ret)
  return ret;
 cmd_sts |= TX_FIRST_DESC | GEN_CRC | BUFFER_OWNED_BY_DMA;

 tx_index = txq->tx_curr_desc++;
 if (txq->tx_curr_desc == txq->tx_ring_size)
  txq->tx_curr_desc = 0;
 desc = &txq->tx_desc_area[tx_index];
 txq->tx_desc_mapping[tx_index] = DESC_DMA_MAP_SINGLE;

 if (nr_frags) {
  txq_submit_frag_skb(txq, skb);
  length = skb_headlen(skb);
 } else {
  cmd_sts |= ZERO_PADDING | TX_LAST_DESC | TX_ENABLE_INTERRUPT;
  length = skb->len;
 }

 desc->l4i_chk = l4i_chk;
 desc->byte_cnt = length;
 desc->buf_ptr = dma_map_single(mp->dev->dev.parent, skb->data,
           length, DMA_TO_DEVICE);

 __skb_queue_tail(&txq->tx_skb, skb);

 skb_tx_timestamp(skb);


 wmb();
 desc->cmd_sts = cmd_sts;


 mp->work_tx_end &= ~(1 << txq->index);


 wmb();
 txq_enable(txq);

 txq->tx_desc_count += nr_frags + 1;

 return 0;
}
