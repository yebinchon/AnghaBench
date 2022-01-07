
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cfg80211_chan_def {TYPE_2__* chan; } ;
struct TYPE_3__ {scalar_t__ region; int state; struct cfg80211_chan_def chandef; } ;
struct mt7615_dev {scalar_t__ dfs_state; TYPE_1__ mt76; } ;
struct TYPE_4__ {scalar_t__ dfs_state; int flags; } ;


 int IEEE80211_CHAN_RADAR ;
 int MT76_SCANNING ;
 int MT_HW_RDD0 ;
 int MT_RX_SEL0 ;
 scalar_t__ NL80211_DFS_AVAILABLE ;
 scalar_t__ NL80211_DFS_UNSET ;
 int RDD_CAC_END ;
 int RDD_NORMAL_START ;
 int mt7615_dfs_start_radar_detector (struct mt7615_dev*) ;
 int mt7615_dfs_stop_radar_detector (struct mt7615_dev*) ;
 int mt7615_mcu_rdd_cmd (struct mt7615_dev*,int ,int ,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

int mt7615_dfs_init_radar_detector(struct mt7615_dev *dev)
{
 struct cfg80211_chan_def *chandef = &dev->mt76.chandef;
 int err;

 if (dev->mt76.region == NL80211_DFS_UNSET)
  return 0;

 if (test_bit(MT76_SCANNING, &dev->mt76.state))
  return 0;

 if (dev->dfs_state == chandef->chan->dfs_state)
  return 0;

 dev->dfs_state = chandef->chan->dfs_state;

 if (chandef->chan->flags & IEEE80211_CHAN_RADAR) {
  if (chandef->chan->dfs_state != NL80211_DFS_AVAILABLE)
   return mt7615_dfs_start_radar_detector(dev);
  else
   return mt7615_mcu_rdd_cmd(dev, RDD_CAC_END, MT_HW_RDD0,
        MT_RX_SEL0, 0);
 } else {
  err = mt7615_mcu_rdd_cmd(dev, RDD_NORMAL_START,
      MT_HW_RDD0, MT_RX_SEL0, 0);
  if (err < 0)
   return err;

  return mt7615_dfs_stop_radar_detector(dev);
 }
}
