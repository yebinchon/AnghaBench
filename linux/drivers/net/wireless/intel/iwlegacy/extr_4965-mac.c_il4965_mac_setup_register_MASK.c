#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct il_vif_priv {int dummy; } ;
struct il_station_priv {int dummy; } ;
struct il_priv {int mac80211_registered; struct ieee80211_hw* hw; TYPE_2__* bands; TYPE_1__* cfg; } ;
struct ieee80211_hw {char* rate_control_algorithm; int sta_data_size; int vif_data_size; int queues; TYPE_3__* wiphy; int /*<<< orphan*/  max_listen_interval; } ;
struct TYPE_6__ {int features; int interface_modes; int regulatory_flags; int max_scan_ie_len; TYPE_2__** bands; int /*<<< orphan*/  max_scan_ssids; int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {scalar_t__ n_channels; } ;
struct TYPE_4__ {int sku; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMPDU_AGGREGATION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IL_CONN_MAX_LISTEN_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int IL_SKU_N ; 
 int /*<<< orphan*/  NEED_DTIM_BEFORE_ASSOC ; 
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_CQM_RSSI_LIST ; 
 int NL80211_FEATURE_DYNAMIC_SMPS ; 
 int NL80211_FEATURE_STATIC_SMPS ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  PROBE_OPTION_MAX ; 
 int REGULATORY_CUSTOM_REG ; 
 int REGULATORY_DISABLE_BEACON_HINTS ; 
 int /*<<< orphan*/  REPORTS_TX_ACK_STATUS ; 
 int /*<<< orphan*/  SIGNAL_DBM ; 
 int /*<<< orphan*/  SPECTRUM_MGMT ; 
 int /*<<< orphan*/  SUPPORTS_DYNAMIC_PS ; 
 int /*<<< orphan*/  SUPPORTS_PS ; 
 int /*<<< orphan*/  WIPHY_FLAG_IBSS_RSN ; 
 int /*<<< orphan*/  WIPHY_FLAG_PS_ON_BY_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct il_priv *il, u32 max_probe_length)
{
	int ret;
	struct ieee80211_hw *hw = il->hw;

	hw->rate_control_algorithm = "iwl-4965-rs";

	/* Tell mac80211 our characteristics */
	FUNC2(hw, SUPPORTS_DYNAMIC_PS);
	FUNC2(hw, SUPPORTS_PS);
	FUNC2(hw, REPORTS_TX_ACK_STATUS);
	FUNC2(hw, SPECTRUM_MGMT);
	FUNC2(hw, NEED_DTIM_BEFORE_ASSOC);
	FUNC2(hw, SIGNAL_DBM);
	FUNC2(hw, AMPDU_AGGREGATION);
	if (il->cfg->sku & IL_SKU_N)
		hw->wiphy->features |= NL80211_FEATURE_DYNAMIC_SMPS |
				       NL80211_FEATURE_STATIC_SMPS;

	hw->sta_data_size = sizeof(struct il_station_priv);
	hw->vif_data_size = sizeof(struct il_vif_priv);

	hw->wiphy->interface_modes =
	    FUNC0(NL80211_IFTYPE_STATION) | FUNC0(NL80211_IFTYPE_ADHOC);

	hw->wiphy->flags |= WIPHY_FLAG_IBSS_RSN;
	hw->wiphy->regulatory_flags |= REGULATORY_CUSTOM_REG |
				       REGULATORY_DISABLE_BEACON_HINTS;

	/*
	 * For now, disable PS by default because it affects
	 * RX performance significantly.
	 */
	hw->wiphy->flags &= ~WIPHY_FLAG_PS_ON_BY_DEFAULT;

	hw->wiphy->max_scan_ssids = PROBE_OPTION_MAX;
	/* we create the 802.11 header and a zero-length SSID element */
	hw->wiphy->max_scan_ie_len = max_probe_length - 24 - 2;

	/* Default value; 4 EDCA QOS priorities */
	hw->queues = 4;

	hw->max_listen_interval = IL_CONN_MAX_LISTEN_INTERVAL;

	if (il->bands[NL80211_BAND_2GHZ].n_channels)
		il->hw->wiphy->bands[NL80211_BAND_2GHZ] =
		    &il->bands[NL80211_BAND_2GHZ];
	if (il->bands[NL80211_BAND_5GHZ].n_channels)
		il->hw->wiphy->bands[NL80211_BAND_5GHZ] =
		    &il->bands[NL80211_BAND_5GHZ];

	FUNC4(il);

	FUNC5(il->hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);

	ret = FUNC3(il->hw);
	if (ret) {
		FUNC1("Failed to register hw (error %d)\n", ret);
		return ret;
	}
	il->mac80211_registered = 1;

	return 0;
}