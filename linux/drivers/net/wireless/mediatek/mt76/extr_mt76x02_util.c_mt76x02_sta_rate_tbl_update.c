
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76x02_sta {int wcid; } ;
struct mt76x02_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_rate {int flags; int idx; } ;
struct ieee80211_sta_rates {TYPE_1__* rate; } ;
struct ieee80211_sta {int rates; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;
struct TYPE_2__ {int flags; int idx; } ;


 int mt76x02_mac_wcid_set_rate (struct mt76x02_dev*,int *,struct ieee80211_tx_rate*) ;
 struct ieee80211_sta_rates* rcu_dereference (int ) ;

void mt76x02_sta_rate_tbl_update(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct ieee80211_sta *sta)
{
 struct mt76x02_dev *dev = hw->priv;
 struct mt76x02_sta *msta = (struct mt76x02_sta *)sta->drv_priv;
 struct ieee80211_sta_rates *rates = rcu_dereference(sta->rates);
 struct ieee80211_tx_rate rate = {};

 if (!rates)
  return;

 rate.idx = rates->rate[0].idx;
 rate.flags = rates->rate[0].flags;
 mt76x02_mac_wcid_set_rate(dev, &msta->wcid, &rate);
}
