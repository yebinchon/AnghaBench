
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mt76_dev {int dummy; } ;


 int MT_TX_CB_TXS_DONE ;
 int __mt76_tx_status_skb_done (struct mt76_dev*,struct sk_buff*,int ,struct sk_buff_head*) ;

void
mt76_tx_status_skb_done(struct mt76_dev *dev, struct sk_buff *skb,
   struct sk_buff_head *list)
{
 __mt76_tx_status_skb_done(dev, skb, MT_TX_CB_TXS_DONE, list);
}
