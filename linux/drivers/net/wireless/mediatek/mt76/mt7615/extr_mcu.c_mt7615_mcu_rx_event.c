
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct mt7615_mcu_rxd {scalar_t__ ext_eid; int seq; } ;
struct mt7615_dev {int mt76; } ;


 scalar_t__ MCU_EXT_EVENT_ASSERT_DUMP ;
 scalar_t__ MCU_EXT_EVENT_FW_LOG_2_HOST ;
 scalar_t__ MCU_EXT_EVENT_PS_SYNC ;
 scalar_t__ MCU_EXT_EVENT_THERMAL_PROTECT ;
 int mt7615_mcu_rx_unsolicited_event (struct mt7615_dev*,struct sk_buff*) ;
 int mt76_mcu_rx_event (int *,struct sk_buff*) ;

void mt7615_mcu_rx_event(struct mt7615_dev *dev, struct sk_buff *skb)
{
 struct mt7615_mcu_rxd *rxd = (struct mt7615_mcu_rxd *)skb->data;

 if (rxd->ext_eid == MCU_EXT_EVENT_THERMAL_PROTECT ||
     rxd->ext_eid == MCU_EXT_EVENT_FW_LOG_2_HOST ||
     rxd->ext_eid == MCU_EXT_EVENT_ASSERT_DUMP ||
     rxd->ext_eid == MCU_EXT_EVENT_PS_SYNC ||
     !rxd->seq)
  mt7615_mcu_rx_unsolicited_event(dev, skb);
 else
  mt76_mcu_rx_event(&dev->mt76, skb);
}
