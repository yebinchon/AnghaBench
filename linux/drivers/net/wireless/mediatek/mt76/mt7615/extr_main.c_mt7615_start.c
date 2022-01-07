
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mac_work; int state; int survey_time; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;
struct ieee80211_hw {struct mt7615_dev* priv; } ;


 int MT7615_WATCHDOG_TIME ;
 int MT76_STATE_RUNNING ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int ktime_get_boottime () ;
 int mt76_hw (struct mt7615_dev*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int mt7615_start(struct ieee80211_hw *hw)
{
 struct mt7615_dev *dev = hw->priv;

 dev->mt76.survey_time = ktime_get_boottime();
 set_bit(MT76_STATE_RUNNING, &dev->mt76.state);
 ieee80211_queue_delayed_work(mt76_hw(dev), &dev->mt76.mac_work,
         MT7615_WATCHDOG_TIME);

 return 0;
}
