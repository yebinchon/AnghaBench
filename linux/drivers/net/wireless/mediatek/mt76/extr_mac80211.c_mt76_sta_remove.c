
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;


 int __mt76_sta_remove (struct mt76_dev*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
mt76_sta_remove(struct mt76_dev *dev, struct ieee80211_vif *vif,
  struct ieee80211_sta *sta)
{
 mutex_lock(&dev->mutex);
 __mt76_sta_remove(dev, vif, sta);
 mutex_unlock(&dev->mutex);
}
