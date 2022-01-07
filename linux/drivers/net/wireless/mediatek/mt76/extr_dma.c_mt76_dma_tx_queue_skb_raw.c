
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct mt76_queue_buf {int len; int addr; } ;
struct mt76_queue {int lock; } ;
struct mt76_dev {int dev; TYPE_1__* q_tx; } ;
typedef enum mt76_txq_id { ____Placeholder_mt76_txq_id } mt76_txq_id ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct mt76_queue* q; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int dma_map_single (int ,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 int mt76_dma_add_buf (struct mt76_dev*,struct mt76_queue*,struct mt76_queue_buf*,int,int ,struct sk_buff*,int *) ;
 int mt76_dma_kick_queue (struct mt76_dev*,struct mt76_queue*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
mt76_dma_tx_queue_skb_raw(struct mt76_dev *dev, enum mt76_txq_id qid,
     struct sk_buff *skb, u32 tx_info)
{
 struct mt76_queue *q = dev->q_tx[qid].q;
 struct mt76_queue_buf buf;
 dma_addr_t addr;

 addr = dma_map_single(dev->dev, skb->data, skb->len,
         DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(dev->dev, addr)))
  return -ENOMEM;

 buf.addr = addr;
 buf.len = skb->len;

 spin_lock_bh(&q->lock);
 mt76_dma_add_buf(dev, q, &buf, 1, tx_info, skb, ((void*)0));
 mt76_dma_kick_queue(dev, q);
 spin_unlock_bh(&q->lock);

 return 0;
}
