
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int work; } ;
struct TYPE_4__ {TYPE_1__ mac_work; int state; int survey_time; } ;
struct mt7603_dev {TYPE_2__ mt76; } ;
struct ieee80211_hw {struct mt7603_dev* priv; } ;


 int MT76_STATE_RUNNING ;
 int ktime_get_boottime () ;
 int mt7603_mac_start (struct mt7603_dev*) ;
 int mt7603_mac_work (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
mt7603_start(struct ieee80211_hw *hw)
{
 struct mt7603_dev *dev = hw->priv;

 mt7603_mac_start(dev);
 dev->mt76.survey_time = ktime_get_boottime();
 set_bit(MT76_STATE_RUNNING, &dev->mt76.state);
 mt7603_mac_work(&dev->mt76.mac_work.work);

 return 0;
}
