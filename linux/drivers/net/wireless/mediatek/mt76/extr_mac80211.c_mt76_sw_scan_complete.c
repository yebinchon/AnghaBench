
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int state; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mt76_dev* priv; } ;


 int MT76_SCANNING ;
 int clear_bit (int ,int *) ;

void mt76_sw_scan_complete(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct mt76_dev *dev = hw->priv;

 clear_bit(MT76_SCANNING, &dev->state);
}
