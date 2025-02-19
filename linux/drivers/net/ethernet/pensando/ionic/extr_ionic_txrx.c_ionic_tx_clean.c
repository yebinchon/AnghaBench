
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int len; } ;
struct ionic_txq_sg_elem {int len; int addr; } ;
struct ionic_txq_sg_desc {struct ionic_txq_sg_elem* elems; } ;
struct ionic_txq_desc {int len; int cmd; } ;
struct ionic_tx_stats {int clean; } ;
struct ionic_queue {int wake; TYPE_2__* lif; } ;
struct ionic_desc_info {struct ionic_txq_desc* desc; struct ionic_txq_sg_desc* sg_desc; } ;
struct ionic_cq_info {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int netdev; TYPE_1__* ionic; } ;
struct TYPE_3__ {struct device* dev; } ;


 int DMA_TO_DEVICE ;
 scalar_t__ IONIC_TXQ_DESC_FLAG_TSO_SOT ;
 scalar_t__ IONIC_TXQ_DESC_OPCODE_TSO ;
 int __netif_subqueue_stopped (int ,int ) ;
 int decode_txq_desc_cmd (scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int netdev_tx_completed_queue (int ,int,int ) ;
 int netif_wake_subqueue (int ,int ) ;
 int q_to_ndq (struct ionic_queue*) ;
 struct ionic_tx_stats* q_to_tx_stats (struct ionic_queue*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void ionic_tx_clean(struct ionic_queue *q, struct ionic_desc_info *desc_info,
      struct ionic_cq_info *cq_info, void *cb_arg)
{
 struct ionic_txq_sg_desc *sg_desc = desc_info->sg_desc;
 struct ionic_txq_sg_elem *elem = sg_desc->elems;
 struct ionic_tx_stats *stats = q_to_tx_stats(q);
 struct ionic_txq_desc *desc = desc_info->desc;
 struct device *dev = q->lif->ionic->dev;
 u8 opcode, flags, nsge;
 u16 queue_index;
 unsigned int i;
 u64 addr;

 decode_txq_desc_cmd(le64_to_cpu(desc->cmd),
       &opcode, &flags, &nsge, &addr);




 if (opcode != IONIC_TXQ_DESC_OPCODE_TSO ||
     flags & IONIC_TXQ_DESC_FLAG_TSO_SOT)
  dma_unmap_single(dev, (dma_addr_t)addr,
     le16_to_cpu(desc->len), DMA_TO_DEVICE);
 else
  dma_unmap_page(dev, (dma_addr_t)addr,
          le16_to_cpu(desc->len), DMA_TO_DEVICE);

 for (i = 0; i < nsge; i++, elem++)
  dma_unmap_page(dev, (dma_addr_t)le64_to_cpu(elem->addr),
          le16_to_cpu(elem->len), DMA_TO_DEVICE);

 if (cb_arg) {
  struct sk_buff *skb = cb_arg;
  u32 len = skb->len;

  queue_index = skb_get_queue_mapping(skb);
  if (unlikely(__netif_subqueue_stopped(q->lif->netdev,
            queue_index))) {
   netif_wake_subqueue(q->lif->netdev, queue_index);
   q->wake++;
  }
  dev_kfree_skb_any(skb);
  stats->clean++;
  netdev_tx_completed_queue(q_to_ndq(q), 1, len);
 }
}
