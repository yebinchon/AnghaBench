
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct mt7615_mcu_rxd {int ext_eid; } ;
struct TYPE_2__ {int hw; } ;
struct mt7615_dev {TYPE_1__ mt76; int hw_pattern; } ;


 int IEEE80211_IFACE_ITER_RESUME_ALL ;


 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct mt7615_dev*) ;
 int ieee80211_radar_detected (int ) ;
 int mt7615_mcu_csa_finish ;

__attribute__((used)) static void
mt7615_mcu_rx_ext_event(struct mt7615_dev *dev, struct sk_buff *skb)
{
 struct mt7615_mcu_rxd *rxd = (struct mt7615_mcu_rxd *)skb->data;

 switch (rxd->ext_eid) {
 case 128:
  ieee80211_radar_detected(dev->mt76.hw);
  dev->hw_pattern++;
  break;
 case 129:
  ieee80211_iterate_active_interfaces_atomic(dev->mt76.hw,
    IEEE80211_IFACE_ITER_RESUME_ALL,
    mt7615_mcu_csa_finish, dev);
  break;
 default:
  break;
 }
}
