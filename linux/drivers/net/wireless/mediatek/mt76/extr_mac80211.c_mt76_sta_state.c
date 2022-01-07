
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_dev {TYPE_1__* drv; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct mt76_dev* priv; } ;
typedef enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;
struct TYPE_2__ {int (* sta_assoc ) (struct mt76_dev*,struct ieee80211_vif*,struct ieee80211_sta*) ;} ;


 int IEEE80211_STA_ASSOC ;
 int IEEE80211_STA_AUTH ;
 int IEEE80211_STA_NONE ;
 int IEEE80211_STA_NOTEXIST ;
 int mt76_sta_add (struct mt76_dev*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int mt76_sta_remove (struct mt76_dev*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int stub1 (struct mt76_dev*,struct ieee80211_vif*,struct ieee80211_sta*) ;

int mt76_sta_state(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
     struct ieee80211_sta *sta,
     enum ieee80211_sta_state old_state,
     enum ieee80211_sta_state new_state)
{
 struct mt76_dev *dev = hw->priv;

 if (old_state == IEEE80211_STA_NOTEXIST &&
     new_state == IEEE80211_STA_NONE)
  return mt76_sta_add(dev, vif, sta);

 if (old_state == IEEE80211_STA_AUTH &&
     new_state == IEEE80211_STA_ASSOC &&
     dev->drv->sta_assoc)
  dev->drv->sta_assoc(dev, vif, sta);

 if (old_state == IEEE80211_STA_NONE &&
     new_state == IEEE80211_STA_NOTEXIST)
  mt76_sta_remove(dev, vif, sta);

 return 0;
}
