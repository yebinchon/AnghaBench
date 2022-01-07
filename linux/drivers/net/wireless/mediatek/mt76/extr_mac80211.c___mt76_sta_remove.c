
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_wcid {int idx; int * aggr; } ;
struct mt76_dev {int wcid_mask; TYPE_1__* drv; int * wcid; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int * txq; scalar_t__ drv_priv; } ;
struct TYPE_2__ {int (* sta_remove ) (struct mt76_dev*,struct ieee80211_vif*,struct ieee80211_sta*) ;} ;


 int ARRAY_SIZE (int *) ;
 int mt76_rx_aggr_stop (struct mt76_dev*,struct mt76_wcid*,int) ;
 int mt76_tx_status_check (struct mt76_dev*,struct mt76_wcid*,int) ;
 int mt76_txq_remove (struct mt76_dev*,int ) ;
 int mt76_wcid_free (int ,int) ;
 int rcu_assign_pointer (int ,int *) ;
 int stub1 (struct mt76_dev*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int synchronize_rcu () ;

void __mt76_sta_remove(struct mt76_dev *dev, struct ieee80211_vif *vif,
         struct ieee80211_sta *sta)
{
 struct mt76_wcid *wcid = (struct mt76_wcid *)sta->drv_priv;
 int i, idx = wcid->idx;

 rcu_assign_pointer(dev->wcid[idx], ((void*)0));
 synchronize_rcu();

 for (i = 0; i < ARRAY_SIZE(wcid->aggr); i++)
  mt76_rx_aggr_stop(dev, wcid, i);

 if (dev->drv->sta_remove)
  dev->drv->sta_remove(dev, vif, sta);

 mt76_tx_status_check(dev, wcid, 1);
 for (i = 0; i < ARRAY_SIZE(sta->txq); i++)
  mt76_txq_remove(dev, sta->txq[i]);
 mt76_wcid_free(dev->wcid_mask, idx);
}
