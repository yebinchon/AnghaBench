
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7603_dev {int coverage_class; } ;
struct ieee80211_hw {struct mt7603_dev* priv; } ;
typedef int s16 ;


 int mt7603_mac_set_timing (struct mt7603_dev*) ;

__attribute__((used)) static void
mt7603_set_coverage_class(struct ieee80211_hw *hw, s16 coverage_class)
{
 struct mt7603_dev *dev = hw->priv;

 dev->coverage_class = coverage_class;
 mt7603_mac_set_timing(dev);
}
