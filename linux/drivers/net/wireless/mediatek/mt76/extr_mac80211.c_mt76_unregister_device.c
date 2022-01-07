
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {struct ieee80211_hw* hw; } ;
struct ieee80211_hw {int dummy; } ;


 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int mt76_tx_status_check (struct mt76_dev*,int *,int) ;

void mt76_unregister_device(struct mt76_dev *dev)
{
 struct ieee80211_hw *hw = dev->hw;

 mt76_tx_status_check(dev, ((void*)0), 1);
 ieee80211_unregister_hw(hw);
}
