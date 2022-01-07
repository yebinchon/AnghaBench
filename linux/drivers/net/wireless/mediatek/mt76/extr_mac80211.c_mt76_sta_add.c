
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mt76_wcid {size_t idx; int rssi; } ;
struct mt76_txq {struct mt76_wcid* wcid; } ;
struct mt76_dev {int mutex; int * wcid; TYPE_1__* drv; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {TYPE_2__** txq; scalar_t__ drv_priv; } ;
struct TYPE_5__ {scalar_t__ drv_priv; } ;
struct TYPE_4__ {int (* sta_add ) (struct mt76_dev*,struct ieee80211_vif*,struct ieee80211_sta*) ;} ;


 int ARRAY_SIZE (TYPE_2__**) ;
 int ewma_signal_init (int *) ;
 int mt76_txq_init (struct mt76_dev*,TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,struct mt76_wcid*) ;
 int stub1 (struct mt76_dev*,struct ieee80211_vif*,struct ieee80211_sta*) ;

__attribute__((used)) static int
mt76_sta_add(struct mt76_dev *dev, struct ieee80211_vif *vif,
      struct ieee80211_sta *sta)
{
 struct mt76_wcid *wcid = (struct mt76_wcid *)sta->drv_priv;
 int ret;
 int i;

 mutex_lock(&dev->mutex);

 ret = dev->drv->sta_add(dev, vif, sta);
 if (ret)
  goto out;

 for (i = 0; i < ARRAY_SIZE(sta->txq); i++) {
  struct mt76_txq *mtxq;

  if (!sta->txq[i])
   continue;

  mtxq = (struct mt76_txq *)sta->txq[i]->drv_priv;
  mtxq->wcid = wcid;

  mt76_txq_init(dev, sta->txq[i]);
 }

 ewma_signal_init(&wcid->rssi);
 rcu_assign_pointer(dev->wcid[wcid->idx], wcid);

out:
 mutex_unlock(&dev->mutex);

 return ret;
}
