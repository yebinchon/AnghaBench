
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mac_work; int state; } ;
struct mt7603_dev {TYPE_1__ mt76; } ;
struct ieee80211_hw {struct mt7603_dev* priv; } ;


 int MT76_STATE_RUNNING ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int mt7603_mac_stop (struct mt7603_dev*) ;

__attribute__((used)) static void
mt7603_stop(struct ieee80211_hw *hw)
{
 struct mt7603_dev *dev = hw->priv;

 clear_bit(MT76_STATE_RUNNING, &dev->mt76.state);
 cancel_delayed_work_sync(&dev->mt76.mac_work);
 mt7603_mac_stop(dev);
}
