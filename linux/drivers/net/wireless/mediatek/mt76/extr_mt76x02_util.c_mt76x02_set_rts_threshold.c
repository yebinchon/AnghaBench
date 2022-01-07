
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mutex; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;


 int EINVAL ;
 int mt76x02_mac_set_rts_thresh (struct mt76x02_dev*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mt76x02_set_rts_threshold(struct ieee80211_hw *hw, u32 val)
{
 struct mt76x02_dev *dev = hw->priv;

 if (val != ~0 && val > 0xffff)
  return -EINVAL;

 mutex_lock(&dev->mt76.mutex);
 mt76x02_mac_set_rts_thresh(dev, val);
 mutex_unlock(&dev->mt76.mutex);

 return 0;
}
