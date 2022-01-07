
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mutex; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mt7615_dev* priv; } ;
struct ieee80211_bss_conf {int enable_beacon; int assoc; } ;


 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BEACON_ENABLED ;
 int mt7615_mcu_set_bcn (struct mt7615_dev*,struct ieee80211_vif*,int ) ;
 int mt7615_mcu_set_bss_info (struct mt7615_dev*,struct ieee80211_vif*,int ) ;
 int mt7615_mcu_set_sta_rec_bmc (struct mt7615_dev*,struct ieee80211_vif*,int ) ;
 int mt7615_mcu_wtbl_bmc (struct mt7615_dev*,struct ieee80211_vif*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mt7615_bss_info_changed(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_bss_conf *info,
        u32 changed)
{
 struct mt7615_dev *dev = hw->priv;

 mutex_lock(&dev->mt76.mutex);

 if (changed & BSS_CHANGED_ASSOC)
  mt7615_mcu_set_bss_info(dev, vif, info->assoc);





 if (changed & BSS_CHANGED_BEACON_ENABLED) {
  mt7615_mcu_set_bss_info(dev, vif, info->enable_beacon);
  mt7615_mcu_wtbl_bmc(dev, vif, info->enable_beacon);
  mt7615_mcu_set_sta_rec_bmc(dev, vif, info->enable_beacon);
  mt7615_mcu_set_bcn(dev, vif, info->enable_beacon);
 }

 mutex_unlock(&dev->mt76.mutex);
}
