
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_chan_def {scalar_t__ width; } ;
struct TYPE_2__ {struct cfg80211_chan_def chandef; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;


 int MT_HW_RDD0 ;
 int MT_HW_RDD1 ;
 int MT_RX_SEL0 ;
 scalar_t__ NL80211_CHAN_WIDTH_160 ;
 scalar_t__ NL80211_CHAN_WIDTH_80P80 ;
 int RDD_STOP ;
 int mt7615_mcu_rdd_cmd (struct mt7615_dev*,int ,int ,int ,int ) ;

int mt7615_dfs_stop_radar_detector(struct mt7615_dev *dev)
{
 struct cfg80211_chan_def *chandef = &dev->mt76.chandef;
 int err;

 err = mt7615_mcu_rdd_cmd(dev, RDD_STOP, MT_HW_RDD0,
     MT_RX_SEL0, 0);
 if (err < 0)
  return err;

 if (chandef->width == NL80211_CHAN_WIDTH_160 ||
     chandef->width == NL80211_CHAN_WIDTH_80P80)
  err = mt7615_mcu_rdd_cmd(dev, RDD_STOP, MT_HW_RDD1,
      MT_RX_SEL0, 0);
 return err;
}
