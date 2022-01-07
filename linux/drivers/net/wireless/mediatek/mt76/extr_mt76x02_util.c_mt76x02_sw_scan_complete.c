
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int low_gain; scalar_t__ gain_init_done; } ;
struct TYPE_3__ {int state; } ;
struct mt76x02_dev {int cal_work; TYPE_2__ cal; TYPE_1__ mt76; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;


 int MT76_SCANNING ;
 int clear_bit (int ,int *) ;
 int ieee80211_queue_delayed_work (struct ieee80211_hw*,int *,int ) ;

void mt76x02_sw_scan_complete(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif)
{
 struct mt76x02_dev *dev = hw->priv;

 clear_bit(MT76_SCANNING, &dev->mt76.state);
 if (dev->cal.gain_init_done) {

  dev->cal.low_gain = -1;
  ieee80211_queue_delayed_work(hw, &dev->cal_work, 0);
 }
}
