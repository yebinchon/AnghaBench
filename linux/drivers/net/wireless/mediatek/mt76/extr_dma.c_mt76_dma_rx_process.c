
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ cb; } ;
struct mt76_queue {int buf_size; int buf_offset; struct sk_buff* rx_head; } ;
struct mt76_dev {struct mt76_queue* q_rx; TYPE_1__* drv; } ;
struct TYPE_2__ {int (* rx_skb ) (struct mt76_dev*,int,struct sk_buff*) ;} ;


 size_t MT_RXQ_MCU ;
 int SKB_WITH_OVERHEAD (int) ;
 int __skb_put (struct sk_buff*,int) ;
 struct sk_buff* build_skb (unsigned char*,int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int mt76_add_fragment (struct mt76_dev*,struct mt76_queue*,unsigned char*,int,int) ;
 unsigned char* mt76_dma_dequeue (struct mt76_dev*,struct mt76_queue*,int,int*,int *,int*) ;
 int mt76_dma_rx_fill (struct mt76_dev*,struct mt76_queue*) ;
 int skb_free_frag (unsigned char*) ;
 int skb_reserve (struct sk_buff*,int) ;
 int stub1 (struct mt76_dev*,int,struct sk_buff*) ;

__attribute__((used)) static int
mt76_dma_rx_process(struct mt76_dev *dev, struct mt76_queue *q, int budget)
{
 int len, data_len, done = 0;
 struct sk_buff *skb;
 unsigned char *data;
 bool more;

 while (done < budget) {
  u32 info;

  data = mt76_dma_dequeue(dev, q, 0, &len, &info, &more);
  if (!data)
   break;

  if (q->rx_head)
   data_len = q->buf_size;
  else
   data_len = SKB_WITH_OVERHEAD(q->buf_size);

  if (data_len < len + q->buf_offset) {
   dev_kfree_skb(q->rx_head);
   q->rx_head = ((void*)0);

   skb_free_frag(data);
   continue;
  }

  if (q->rx_head) {
   mt76_add_fragment(dev, q, data, len, more);
   continue;
  }

  skb = build_skb(data, q->buf_size);
  if (!skb) {
   skb_free_frag(data);
   continue;
  }
  skb_reserve(skb, q->buf_offset);

  if (q == &dev->q_rx[MT_RXQ_MCU]) {
   u32 *rxfce = (u32 *)skb->cb;
   *rxfce = info;
  }

  __skb_put(skb, len);
  done++;

  if (more) {
   q->rx_head = skb;
   continue;
  }

  dev->drv->rx_skb(dev, q - dev->q_rx, skb);
 }

 mt76_dma_rx_fill(dev, q);
 return done;
}
