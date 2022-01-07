
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct mt76x02_dev {TYPE_1__ mt76; int coverage_class; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;
typedef int s16 ;


 int mt76x02_set_tx_ackto (struct mt76x02_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mt76x02_set_coverage_class(struct ieee80211_hw *hw,
    s16 coverage_class)
{
 struct mt76x02_dev *dev = hw->priv;

 mutex_lock(&dev->mt76.mutex);
 dev->coverage_class = coverage_class;
 mt76x02_set_tx_ackto(dev);
 mutex_unlock(&dev->mt76.mutex);
}
