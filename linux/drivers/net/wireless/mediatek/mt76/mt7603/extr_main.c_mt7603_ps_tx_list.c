
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mt7603_dev {int dummy; } ;


 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int mt76_tx_queue_skb_raw (struct mt7603_dev*,int ,struct sk_buff*,int ) ;
 int skb_get_queue_mapping (struct sk_buff*) ;

__attribute__((used)) static void
mt7603_ps_tx_list(struct mt7603_dev *dev, struct sk_buff_head *list)
{
 struct sk_buff *skb;

 while ((skb = __skb_dequeue(list)) != ((void*)0))
  mt76_tx_queue_skb_raw(dev, skb_get_queue_mapping(skb),
          skb, 0);
}
