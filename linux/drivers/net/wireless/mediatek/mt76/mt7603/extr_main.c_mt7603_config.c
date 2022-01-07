
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int mutex; } ;
struct mt7603_dev {TYPE_2__ mt76; int rxfilter; } ;
struct TYPE_3__ {int flags; int chandef; } ;
struct ieee80211_hw {TYPE_1__ conf; struct mt7603_dev* priv; } ;


 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int IEEE80211_CONF_CHANGE_MONITOR ;
 int IEEE80211_CONF_CHANGE_POWER ;
 int IEEE80211_CONF_MONITOR ;
 int MT_WF_RFCR ;
 int MT_WF_RFCR_DROP_OTHER_UC ;
 int ieee80211_stop_queues (struct ieee80211_hw*) ;
 int ieee80211_wake_queues (struct ieee80211_hw*) ;
 int mt7603_set_channel (struct mt7603_dev*,int *) ;
 int mt76_wr (struct mt7603_dev*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
mt7603_config(struct ieee80211_hw *hw, u32 changed)
{
 struct mt7603_dev *dev = hw->priv;
 int ret = 0;

 if (changed & (IEEE80211_CONF_CHANGE_CHANNEL |
         IEEE80211_CONF_CHANGE_POWER)) {
  ieee80211_stop_queues(hw);
  ret = mt7603_set_channel(dev, &hw->conf.chandef);
  ieee80211_wake_queues(hw);
 }

 if (changed & IEEE80211_CONF_CHANGE_MONITOR) {
  mutex_lock(&dev->mt76.mutex);

  if (!(hw->conf.flags & IEEE80211_CONF_MONITOR))
   dev->rxfilter |= MT_WF_RFCR_DROP_OTHER_UC;
  else
   dev->rxfilter &= ~MT_WF_RFCR_DROP_OTHER_UC;

  mt76_wr(dev, MT_WF_RFCR, dev->rxfilter);

  mutex_unlock(&dev->mt76.mutex);
 }

 return ret;
}
