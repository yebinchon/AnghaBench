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
struct ssb_sprom {int /*<<< orphan*/  il0mac; int /*<<< orphan*/  et1mac; } ;
struct ieee80211_hw {int max_rates; TYPE_1__* wiphy; } ;
struct b43_wl {int hw_registered; scalar_t__* tx_queue_stopped; int /*<<< orphan*/ * tx_queue; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  txpower_adjust_work; int /*<<< orphan*/  beacon_update_trigger; int /*<<< orphan*/  beacon_lock; int /*<<< orphan*/  hardirq_lock; int /*<<< orphan*/  mutex; struct ieee80211_hw* hw; } ;
struct b43_bus_dev {int chip_id; int /*<<< orphan*/  core_rev; int /*<<< orphan*/  dev; struct ssb_sprom* bus_sprom; } ;
struct TYPE_2__ {int interface_modes; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int B43_QOS_QUEUE_NUM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct b43_wl* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_CQM_RSSI_LIST ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  NL80211_IFTYPE_WDS ; 
 int /*<<< orphan*/  RX_INCLUDES_FCS ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGNAL_DBM ; 
 int /*<<< orphan*/  WIPHY_FLAG_IBSS_RSN ; 
 int /*<<< orphan*/  b43_beacon_update_trigger_work ; 
 int /*<<< orphan*/  b43_hw_ops ; 
 int /*<<< orphan*/  b43_phy_txpower_adjust_work ; 
 int /*<<< orphan*/  b43_tx_work ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wl*,char*,char*,int /*<<< orphan*/ ) ; 
 struct b43_wl* FUNC8 (struct ieee80211_hw*) ; 
 struct ieee80211_hw* FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct b43_wl *FUNC17(struct b43_bus_dev *dev)
{
	struct ssb_sprom *sprom = dev->bus_sprom;
	struct ieee80211_hw *hw;
	struct b43_wl *wl;
	char chip_name[6];
	int queue_num;

	hw = FUNC9(sizeof(*wl), &b43_hw_ops);
	if (!hw) {
		FUNC6(NULL, "Could not allocate ieee80211 device\n");
		return FUNC2(-ENOMEM);
	}
	wl = FUNC8(hw);

	/* fill hw info */
	FUNC10(hw, RX_INCLUDES_FCS);
	FUNC10(hw, SIGNAL_DBM);

	hw->wiphy->interface_modes =
		FUNC1(NL80211_IFTYPE_AP) |
		FUNC1(NL80211_IFTYPE_MESH_POINT) |
		FUNC1(NL80211_IFTYPE_STATION) |
#ifdef CONFIG_WIRELESS_WDS
		BIT(NL80211_IFTYPE_WDS) |
#endif
		FUNC1(NL80211_IFTYPE_ADHOC);

	hw->wiphy->flags |= WIPHY_FLAG_IBSS_RSN;

	FUNC16(hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);

	wl->hw_registered = false;
	hw->max_rates = 2;
	FUNC4(hw, dev->dev);
	if (FUNC11(sprom->et1mac))
		FUNC5(hw, sprom->et1mac);
	else
		FUNC5(hw, sprom->il0mac);

	/* Initialize struct b43_wl */
	wl->hw = hw;
	FUNC12(&wl->mutex);
	FUNC15(&wl->hardirq_lock);
	FUNC15(&wl->beacon_lock);
	FUNC3(&wl->beacon_update_trigger, b43_beacon_update_trigger_work);
	FUNC3(&wl->txpower_adjust_work, b43_phy_txpower_adjust_work);
	FUNC3(&wl->tx_work, b43_tx_work);

	/* Initialize queues and flags. */
	for (queue_num = 0; queue_num < B43_QOS_QUEUE_NUM; queue_num++) {
		FUNC13(&wl->tx_queue[queue_num]);
		wl->tx_queue_stopped[queue_num] = 0;
	}

	FUNC14(chip_name, FUNC0(chip_name),
		 (dev->chip_id > 0x9999) ? "%d" : "%04X", dev->chip_id);
	FUNC7(wl, "Broadcom %s WLAN found (core revision %u)\n", chip_name,
		dev->core_rev);
	return wl;
}