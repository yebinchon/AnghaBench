
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct il_vif_priv {int dummy; } ;
struct il_priv {int mac80211_registered; struct ieee80211_hw* hw; TYPE_1__* bands; } ;
struct il3945_sta_priv {int dummy; } ;
struct ieee80211_hw {char* rate_control_algorithm; int sta_data_size; int vif_data_size; int queues; TYPE_2__* wiphy; } ;
struct TYPE_4__ {int interface_modes; int regulatory_flags; int max_scan_ie_len; TYPE_1__** bands; int max_scan_ssids; int flags; } ;
struct TYPE_3__ {scalar_t__ n_channels; } ;


 int BIT (int ) ;
 int IL3945_MAX_PROBE_REQUEST ;
 int IL_ERR (char*,int) ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int NL80211_EXT_FEATURE_CQM_RSSI_LIST ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_STATION ;
 int PROBE_OPTION_MAX_3945 ;
 int REGULATORY_CUSTOM_REG ;
 int REGULATORY_DISABLE_BEACON_HINTS ;
 int SIGNAL_DBM ;
 int SPECTRUM_MGMT ;
 int SUPPORTS_DYNAMIC_PS ;
 int SUPPORTS_PS ;
 int WIPHY_FLAG_IBSS_RSN ;
 int WIPHY_FLAG_PS_ON_BY_DEFAULT ;
 int ieee80211_hw_set (struct ieee80211_hw*,int ) ;
 int ieee80211_register_hw (struct ieee80211_hw*) ;
 int il_leds_init (struct il_priv*) ;
 int wiphy_ext_feature_set (TYPE_2__*,int ) ;

__attribute__((used)) static int
il3945_setup_mac(struct il_priv *il)
{
 int ret;
 struct ieee80211_hw *hw = il->hw;

 hw->rate_control_algorithm = "iwl-3945-rs";
 hw->sta_data_size = sizeof(struct il3945_sta_priv);
 hw->vif_data_size = sizeof(struct il_vif_priv);


 ieee80211_hw_set(hw, SUPPORTS_DYNAMIC_PS);
 ieee80211_hw_set(hw, SUPPORTS_PS);
 ieee80211_hw_set(hw, SIGNAL_DBM);
 ieee80211_hw_set(hw, SPECTRUM_MGMT);

 hw->wiphy->interface_modes =
     BIT(NL80211_IFTYPE_STATION) | BIT(NL80211_IFTYPE_ADHOC);

 hw->wiphy->flags |= WIPHY_FLAG_IBSS_RSN;
 hw->wiphy->regulatory_flags |= REGULATORY_CUSTOM_REG |
           REGULATORY_DISABLE_BEACON_HINTS;

 hw->wiphy->flags &= ~WIPHY_FLAG_PS_ON_BY_DEFAULT;

 hw->wiphy->max_scan_ssids = PROBE_OPTION_MAX_3945;

 hw->wiphy->max_scan_ie_len = IL3945_MAX_PROBE_REQUEST - 24 - 2;


 hw->queues = 4;

 if (il->bands[NL80211_BAND_2GHZ].n_channels)
  il->hw->wiphy->bands[NL80211_BAND_2GHZ] =
      &il->bands[NL80211_BAND_2GHZ];

 if (il->bands[NL80211_BAND_5GHZ].n_channels)
  il->hw->wiphy->bands[NL80211_BAND_5GHZ] =
      &il->bands[NL80211_BAND_5GHZ];

 il_leds_init(il);

 wiphy_ext_feature_set(il->hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);

 ret = ieee80211_register_hw(il->hw);
 if (ret) {
  IL_ERR("Failed to register hw (error %d)\n", ret);
  return ret;
 }
 il->mac80211_registered = 1;

 return 0;
}
