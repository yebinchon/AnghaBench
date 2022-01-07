
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int hw; } ;


 int ieee80211_free_hw (int ) ;
 int mt76_tx_free (struct mt76_dev*) ;

void mt76_free_device(struct mt76_dev *dev)
{
 mt76_tx_free(dev);
 ieee80211_free_hw(dev->hw);
}
