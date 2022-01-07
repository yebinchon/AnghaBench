
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mt76_dev {int * rx_skb; int state; } ;
typedef enum mt76_rxq_id { ____Placeholder_mt76_rxq_id } mt76_rxq_id ;


 int MT76_STATE_RUNNING ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int test_bit (int ,int *) ;

void mt76_rx(struct mt76_dev *dev, enum mt76_rxq_id q, struct sk_buff *skb)
{
 if (!test_bit(MT76_STATE_RUNNING, &dev->state)) {
  dev_kfree_skb(skb);
  return;
 }

 __skb_queue_tail(&dev->rx_skb[q], skb);
}
