
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mt7615_dev* priv; } ;
struct cfg80211_chan_def {int dummy; } ;


 int mt7615_mcu_set_bcn (struct mt7615_dev*,struct ieee80211_vif*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
mt7615_channel_switch_beacon(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct cfg80211_chan_def *chandef)
{
 struct mt7615_dev *dev = hw->priv;

 mutex_lock(&dev->mt76.mutex);
 mt7615_mcu_set_bcn(dev, vif, 1);
 mutex_unlock(&dev->mt76.mutex);
}
