
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int flags; int available_antennas_rx; int available_antennas_tx; int features; } ;
struct mt76_txq {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_5ghz; scalar_t__ has_2ghz; } ;
struct mt76_dev {struct ieee80211_hw* hw; TYPE_1__ cap; int antenna_mask; int macaddr; int dev; int txwi_cache; } ;
struct ieee80211_rate {int dummy; } ;
struct ieee80211_hw {int txq_data_size; int max_tx_fragments; struct wiphy* wiphy; } ;


 int AMPDU_AGGREGATION ;
 int AP_LINK_PS ;
 int CONFIG_MT76_LEDS ;
 int HOST_BROADCAST_PS_BUFFERING ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ENABLED (int ) ;
 int MFP_CAPABLE ;
 int NEEDS_UNIQUE_STA_ADDR ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int NL80211_EXT_FEATURE_CQM_RSSI_LIST ;
 int NL80211_FEATURE_ACTIVE_MONITOR ;
 int PS_NULLFUNC_STACK ;
 int REPORTS_TX_ACK_STATUS ;
 int SET_IEEE80211_DEV (struct ieee80211_hw*,int ) ;
 int SET_IEEE80211_PERM_ADDR (struct ieee80211_hw*,int ) ;
 int SIGNAL_DBM ;
 int SUPPORTS_AMSDU_IN_AMPDU ;
 int SUPPORTS_CLONED_SKBS ;
 int SUPPORTS_RC_TABLE ;
 int SUPPORT_FAST_XMIT ;
 int TX_AMSDU ;
 int TX_FRAG_LIST ;
 int WIPHY_FLAG_IBSS_RSN ;
 int dev_set_drvdata (int ,struct mt76_dev*) ;
 int ieee80211_hw_set (struct ieee80211_hw*,int ) ;
 int ieee80211_register_hw (struct ieee80211_hw*) ;
 int mt76_check_sband (struct mt76_dev*,int ) ;
 int mt76_init_sband_2g (struct mt76_dev*,struct ieee80211_rate*,int) ;
 int mt76_init_sband_5g (struct mt76_dev*,struct ieee80211_rate*,int,int) ;
 int mt76_led_init (struct mt76_dev*) ;
 int wiphy_ext_feature_set (struct wiphy*,int ) ;
 int wiphy_read_of_freq_limits (struct wiphy*) ;

int mt76_register_device(struct mt76_dev *dev, bool vht,
    struct ieee80211_rate *rates, int n_rates)
{
 struct ieee80211_hw *hw = dev->hw;
 struct wiphy *wiphy = hw->wiphy;
 int ret;

 dev_set_drvdata(dev->dev, dev);

 INIT_LIST_HEAD(&dev->txwi_cache);

 SET_IEEE80211_DEV(hw, dev->dev);
 SET_IEEE80211_PERM_ADDR(hw, dev->macaddr);

 wiphy->features |= NL80211_FEATURE_ACTIVE_MONITOR;

 wiphy_ext_feature_set(wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);

 wiphy->available_antennas_tx = dev->antenna_mask;
 wiphy->available_antennas_rx = dev->antenna_mask;

 hw->txq_data_size = sizeof(struct mt76_txq);
 hw->max_tx_fragments = 16;

 ieee80211_hw_set(hw, SIGNAL_DBM);
 ieee80211_hw_set(hw, PS_NULLFUNC_STACK);
 ieee80211_hw_set(hw, HOST_BROADCAST_PS_BUFFERING);
 ieee80211_hw_set(hw, AMPDU_AGGREGATION);
 ieee80211_hw_set(hw, SUPPORTS_RC_TABLE);
 ieee80211_hw_set(hw, SUPPORT_FAST_XMIT);
 ieee80211_hw_set(hw, SUPPORTS_CLONED_SKBS);
 ieee80211_hw_set(hw, SUPPORTS_AMSDU_IN_AMPDU);
 ieee80211_hw_set(hw, TX_AMSDU);
 ieee80211_hw_set(hw, TX_FRAG_LIST);
 ieee80211_hw_set(hw, MFP_CAPABLE);
 ieee80211_hw_set(hw, AP_LINK_PS);
 ieee80211_hw_set(hw, REPORTS_TX_ACK_STATUS);
 ieee80211_hw_set(hw, NEEDS_UNIQUE_STA_ADDR);

 wiphy->flags |= WIPHY_FLAG_IBSS_RSN;

 if (dev->cap.has_2ghz) {
  ret = mt76_init_sband_2g(dev, rates, n_rates);
  if (ret)
   return ret;
 }

 if (dev->cap.has_5ghz) {
  ret = mt76_init_sband_5g(dev, rates + 4, n_rates - 4, vht);
  if (ret)
   return ret;
 }

 wiphy_read_of_freq_limits(dev->hw->wiphy);
 mt76_check_sband(dev, NL80211_BAND_2GHZ);
 mt76_check_sband(dev, NL80211_BAND_5GHZ);

 if (IS_ENABLED(CONFIG_MT76_LEDS)) {
  ret = mt76_led_init(dev);
  if (ret)
   return ret;
 }

 return ieee80211_register_hw(hw);
}
