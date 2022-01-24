#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int /*<<< orphan*/  flags; int /*<<< orphan*/  available_antennas_rx; int /*<<< orphan*/  available_antennas_tx; int /*<<< orphan*/  features; } ;
struct mt76_txq {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_5ghz; scalar_t__ has_2ghz; } ;
struct mt76_dev {struct ieee80211_hw* hw; TYPE_1__ cap; int /*<<< orphan*/  antenna_mask; int /*<<< orphan*/  macaddr; int /*<<< orphan*/  dev; int /*<<< orphan*/  txwi_cache; } ;
struct ieee80211_rate {int dummy; } ;
struct ieee80211_hw {int txq_data_size; int max_tx_fragments; struct wiphy* wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMPDU_AGGREGATION ; 
 int /*<<< orphan*/  AP_LINK_PS ; 
 int /*<<< orphan*/  CONFIG_MT76_LEDS ; 
 int /*<<< orphan*/  HOST_BROADCAST_PS_BUFFERING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MFP_CAPABLE ; 
 int /*<<< orphan*/  NEEDS_UNIQUE_STA_ADDR ; 
 int /*<<< orphan*/  NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_CQM_RSSI_LIST ; 
 int /*<<< orphan*/  NL80211_FEATURE_ACTIVE_MONITOR ; 
 int /*<<< orphan*/  PS_NULLFUNC_STACK ; 
 int /*<<< orphan*/  REPORTS_TX_ACK_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGNAL_DBM ; 
 int /*<<< orphan*/  SUPPORTS_AMSDU_IN_AMPDU ; 
 int /*<<< orphan*/  SUPPORTS_CLONED_SKBS ; 
 int /*<<< orphan*/  SUPPORTS_RC_TABLE ; 
 int /*<<< orphan*/  SUPPORT_FAST_XMIT ; 
 int /*<<< orphan*/  TX_AMSDU ; 
 int /*<<< orphan*/  TX_FRAG_LIST ; 
 int /*<<< orphan*/  WIPHY_FLAG_IBSS_RSN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mt76_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76_dev*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mt76_dev*,struct ieee80211_rate*,int) ; 
 int FUNC9 (struct mt76_dev*,struct ieee80211_rate*,int,int) ; 
 int FUNC10 (struct mt76_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct wiphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wiphy*) ; 

int FUNC13(struct mt76_dev *dev, bool vht,
			 struct ieee80211_rate *rates, int n_rates)
{
	struct ieee80211_hw *hw = dev->hw;
	struct wiphy *wiphy = hw->wiphy;
	int ret;

	FUNC4(dev->dev, dev);

	FUNC0(&dev->txwi_cache);

	FUNC2(hw, dev->dev);
	FUNC3(hw, dev->macaddr);

	wiphy->features |= NL80211_FEATURE_ACTIVE_MONITOR;

	FUNC11(wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);

	wiphy->available_antennas_tx = dev->antenna_mask;
	wiphy->available_antennas_rx = dev->antenna_mask;

	hw->txq_data_size = sizeof(struct mt76_txq);
	hw->max_tx_fragments = 16;

	FUNC5(hw, SIGNAL_DBM);
	FUNC5(hw, PS_NULLFUNC_STACK);
	FUNC5(hw, HOST_BROADCAST_PS_BUFFERING);
	FUNC5(hw, AMPDU_AGGREGATION);
	FUNC5(hw, SUPPORTS_RC_TABLE);
	FUNC5(hw, SUPPORT_FAST_XMIT);
	FUNC5(hw, SUPPORTS_CLONED_SKBS);
	FUNC5(hw, SUPPORTS_AMSDU_IN_AMPDU);
	FUNC5(hw, TX_AMSDU);
	FUNC5(hw, TX_FRAG_LIST);
	FUNC5(hw, MFP_CAPABLE);
	FUNC5(hw, AP_LINK_PS);
	FUNC5(hw, REPORTS_TX_ACK_STATUS);
	FUNC5(hw, NEEDS_UNIQUE_STA_ADDR);

	wiphy->flags |= WIPHY_FLAG_IBSS_RSN;

	if (dev->cap.has_2ghz) {
		ret = FUNC8(dev, rates, n_rates);
		if (ret)
			return ret;
	}

	if (dev->cap.has_5ghz) {
		ret = FUNC9(dev, rates + 4, n_rates - 4, vht);
		if (ret)
			return ret;
	}

	FUNC12(dev->hw->wiphy);
	FUNC7(dev, NL80211_BAND_2GHZ);
	FUNC7(dev, NL80211_BAND_5GHZ);

	if (FUNC1(CONFIG_MT76_LEDS)) {
		ret = FUNC10(dev);
		if (ret)
			return ret;
	}

	return FUNC6(hw);
}