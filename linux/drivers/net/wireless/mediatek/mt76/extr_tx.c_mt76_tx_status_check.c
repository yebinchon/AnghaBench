
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct mt76_wcid {int dummy; } ;
struct mt76_dev {int dummy; } ;


 int mt76_tx_status_lock (struct mt76_dev*,struct sk_buff_head*) ;
 int mt76_tx_status_skb_get (struct mt76_dev*,struct mt76_wcid*,int,struct sk_buff_head*) ;
 int mt76_tx_status_unlock (struct mt76_dev*,struct sk_buff_head*) ;

void
mt76_tx_status_check(struct mt76_dev *dev, struct mt76_wcid *wcid, bool flush)
{
 struct sk_buff_head list;

 mt76_tx_status_lock(dev, &list);
 mt76_tx_status_skb_get(dev, wcid, flush ? -1 : 0, &list);
 mt76_tx_status_unlock(dev, &list);
}
