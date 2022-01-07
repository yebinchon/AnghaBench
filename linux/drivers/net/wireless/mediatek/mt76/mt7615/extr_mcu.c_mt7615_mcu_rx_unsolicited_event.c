
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct mt7615_mcu_rxd {int eid; } ;
struct mt7615_dev {int dummy; } ;



 int dev_kfree_skb (struct sk_buff*) ;
 int mt7615_mcu_rx_ext_event (struct mt7615_dev*,struct sk_buff*) ;

__attribute__((used)) static void
mt7615_mcu_rx_unsolicited_event(struct mt7615_dev *dev, struct sk_buff *skb)
{
 struct mt7615_mcu_rxd *rxd = (struct mt7615_mcu_rxd *)skb->data;

 switch (rxd->eid) {
 case 128:
  mt7615_mcu_rx_ext_event(dev, skb);
  break;
 default:
  break;
 }
 dev_kfree_skb(skb);
}
