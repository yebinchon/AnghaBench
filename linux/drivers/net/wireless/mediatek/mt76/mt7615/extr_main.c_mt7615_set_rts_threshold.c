
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mutex; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;
struct ieee80211_hw {struct mt7615_dev* priv; } ;


 int mt7615_mcu_set_rts_thresh (struct mt7615_dev*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mt7615_set_rts_threshold(struct ieee80211_hw *hw, u32 val)
{
 struct mt7615_dev *dev = hw->priv;

 mutex_lock(&dev->mt76.mutex);
 mt7615_mcu_set_rts_thresh(dev, val);
 mutex_unlock(&dev->mt76.mutex);

 return 0;
}
