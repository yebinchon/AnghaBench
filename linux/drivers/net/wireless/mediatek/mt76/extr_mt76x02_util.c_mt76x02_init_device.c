
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct wiphy {int interface_modes; int flags; void* n_iface_combinations; void* iface_combinations; int reg_notifier; } ;
struct mt76x02_vif {int dummy; } ;
struct mt76x02_txwi {int dummy; } ;
struct mt76x02_sta {int dummy; } ;
struct TYPE_15__ {int cap; } ;
struct TYPE_16__ {TYPE_6__ ht_cap; } ;
struct TYPE_17__ {TYPE_7__ sband; } ;
struct TYPE_12__ {int cap; } ;
struct TYPE_13__ {TYPE_3__ ht_cap; } ;
struct TYPE_14__ {TYPE_4__ sband; } ;
struct TYPE_11__ {int idx; int hw_key_idx; } ;
struct TYPE_10__ {int blink_set; int brightness_set; } ;
struct TYPE_18__ {int chainmask; int antenna_mask; TYPE_8__ sband_5g; TYPE_5__ sband_2g; TYPE_2__ global_wcid; TYPE_1__ led_cdev; int mac_work; } ;
struct mt76x02_dev {int slottime; TYPE_9__ mt76; int wdt_work; } ;
struct ieee80211_hw {int queues; int max_rates; int max_report_rates; int max_rate_tries; int extra_tx_headroom; int sta_data_size; int vif_data_size; struct wiphy* wiphy; } ;


 void* ARRAY_SIZE (void*) ;
 int BIT (int ) ;
 int CONFIG_MT76_LEDS ;
 int IEEE80211_HT_CAP_LDPC_CODING ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ MT_DMA_HDR_LEN ;
 int NL80211_EXT_FEATURE_VHT_IBSS ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_STATION ;
 int SUPPORTS_HT_CCK_RATES ;
 int SUPPORTS_REORDERING_BUFFER ;
 int WIPHY_FLAG_HAS_CHANNEL_SWITCH ;
 int ieee80211_hw_set (struct ieee80211_hw*,int ) ;
 scalar_t__ is_mt76x2 (struct mt76x02_dev*) ;
 struct ieee80211_hw* mt76_hw (struct mt76x02_dev*) ;
 scalar_t__ mt76_is_usb (struct mt76x02_dev*) ;
 int mt76x02_dfs_init_detector (struct mt76x02_dev*) ;
 void* mt76x02_if_comb ;
 int mt76x02_led_set_blink ;
 int mt76x02_led_set_brightness ;
 int mt76x02_mac_work ;
 int mt76x02_regd_notifier ;
 int mt76x02_wdt_work ;
 void* mt76x02u_if_comb ;
 int wiphy_ext_feature_set (struct wiphy*,int ) ;

void mt76x02_init_device(struct mt76x02_dev *dev)
{
 struct ieee80211_hw *hw = mt76_hw(dev);
 struct wiphy *wiphy = hw->wiphy;

 INIT_DELAYED_WORK(&dev->mt76.mac_work, mt76x02_mac_work);

 hw->queues = 4;
 hw->max_rates = 1;
 hw->max_report_rates = 7;
 hw->max_rate_tries = 1;
 hw->extra_tx_headroom = 2;

 wiphy->interface_modes =
  BIT(NL80211_IFTYPE_STATION) |
  BIT(NL80211_IFTYPE_AP) |



  BIT(NL80211_IFTYPE_ADHOC);

 if (mt76_is_usb(dev)) {
  hw->extra_tx_headroom += sizeof(struct mt76x02_txwi) +
      MT_DMA_HDR_LEN;
  wiphy->iface_combinations = mt76x02u_if_comb;
  wiphy->n_iface_combinations = ARRAY_SIZE(mt76x02u_if_comb);
 } else {
  INIT_DELAYED_WORK(&dev->wdt_work, mt76x02_wdt_work);

  mt76x02_dfs_init_detector(dev);

  wiphy->reg_notifier = mt76x02_regd_notifier;
  wiphy->iface_combinations = mt76x02_if_comb;
  wiphy->n_iface_combinations = ARRAY_SIZE(mt76x02_if_comb);
  wiphy->flags |= WIPHY_FLAG_HAS_CHANNEL_SWITCH;


  if (IS_ENABLED(CONFIG_MT76_LEDS)) {
   dev->mt76.led_cdev.brightness_set =
     mt76x02_led_set_brightness;
   dev->mt76.led_cdev.blink_set = mt76x02_led_set_blink;
  }
 }

 wiphy_ext_feature_set(wiphy, NL80211_EXT_FEATURE_VHT_IBSS);

 hw->sta_data_size = sizeof(struct mt76x02_sta);
 hw->vif_data_size = sizeof(struct mt76x02_vif);

 ieee80211_hw_set(hw, SUPPORTS_HT_CCK_RATES);
 ieee80211_hw_set(hw, SUPPORTS_REORDERING_BUFFER);

 dev->mt76.global_wcid.idx = 255;
 dev->mt76.global_wcid.hw_key_idx = -1;
 dev->slottime = 9;

 if (is_mt76x2(dev)) {
  dev->mt76.sband_2g.sband.ht_cap.cap |=
    IEEE80211_HT_CAP_LDPC_CODING;
  dev->mt76.sband_5g.sband.ht_cap.cap |=
    IEEE80211_HT_CAP_LDPC_CODING;
  dev->mt76.chainmask = 0x202;
  dev->mt76.antenna_mask = 3;
 } else {
  dev->mt76.chainmask = 0x101;
  dev->mt76.antenna_mask = 1;
 }
}
