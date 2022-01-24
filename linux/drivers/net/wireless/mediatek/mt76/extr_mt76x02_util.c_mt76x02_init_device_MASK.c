#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int interface_modes; int /*<<< orphan*/  flags; void* n_iface_combinations; void* iface_combinations; int /*<<< orphan*/  reg_notifier; } ;
struct mt76x02_vif {int dummy; } ;
struct mt76x02_txwi {int dummy; } ;
struct mt76x02_sta {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  cap; } ;
struct TYPE_16__ {TYPE_6__ ht_cap; } ;
struct TYPE_17__ {TYPE_7__ sband; } ;
struct TYPE_12__ {int /*<<< orphan*/  cap; } ;
struct TYPE_13__ {TYPE_3__ ht_cap; } ;
struct TYPE_14__ {TYPE_4__ sband; } ;
struct TYPE_11__ {int idx; int hw_key_idx; } ;
struct TYPE_10__ {int /*<<< orphan*/  blink_set; int /*<<< orphan*/  brightness_set; } ;
struct TYPE_18__ {int chainmask; int antenna_mask; TYPE_8__ sband_5g; TYPE_5__ sband_2g; TYPE_2__ global_wcid; TYPE_1__ led_cdev; int /*<<< orphan*/  mac_work; } ;
struct mt76x02_dev {int slottime; TYPE_9__ mt76; int /*<<< orphan*/  wdt_work; } ;
struct ieee80211_hw {int queues; int max_rates; int max_report_rates; int max_rate_tries; int extra_tx_headroom; int sta_data_size; int vif_data_size; struct wiphy* wiphy; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG_MT76_LEDS ; 
 int /*<<< orphan*/  IEEE80211_HT_CAP_LDPC_CODING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ MT_DMA_HDR_LEN ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_VHT_IBSS ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  SUPPORTS_HT_CCK_RATES ; 
 int /*<<< orphan*/  SUPPORTS_REORDERING_BUFFER ; 
 int /*<<< orphan*/  WIPHY_FLAG_HAS_CHANNEL_SWITCH ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mt76x02_dev*) ; 
 struct ieee80211_hw* FUNC6 (struct mt76x02_dev*) ; 
 scalar_t__ FUNC7 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*) ; 
 void* mt76x02_if_comb ; 
 int /*<<< orphan*/  mt76x02_led_set_blink ; 
 int /*<<< orphan*/  mt76x02_led_set_brightness ; 
 int /*<<< orphan*/  mt76x02_mac_work ; 
 int /*<<< orphan*/  mt76x02_regd_notifier ; 
 int /*<<< orphan*/  mt76x02_wdt_work ; 
 void* mt76x02u_if_comb ; 
 int /*<<< orphan*/  FUNC9 (struct wiphy*,int /*<<< orphan*/ ) ; 

void FUNC10(struct mt76x02_dev *dev)
{
	struct ieee80211_hw *hw = FUNC6(dev);
	struct wiphy *wiphy = hw->wiphy;

	FUNC2(&dev->mt76.mac_work, mt76x02_mac_work);

	hw->queues = 4;
	hw->max_rates = 1;
	hw->max_report_rates = 7;
	hw->max_rate_tries = 1;
	hw->extra_tx_headroom = 2;

	wiphy->interface_modes =
		FUNC1(NL80211_IFTYPE_STATION) |
		FUNC1(NL80211_IFTYPE_AP) |
#ifdef CONFIG_MAC80211_MESH
		BIT(NL80211_IFTYPE_MESH_POINT) |
#endif
		FUNC1(NL80211_IFTYPE_ADHOC);

	if (FUNC7(dev)) {
		hw->extra_tx_headroom += sizeof(struct mt76x02_txwi) +
					 MT_DMA_HDR_LEN;
		wiphy->iface_combinations = mt76x02u_if_comb;
		wiphy->n_iface_combinations = FUNC0(mt76x02u_if_comb);
	} else {
		FUNC2(&dev->wdt_work, mt76x02_wdt_work);

		FUNC8(dev);

		wiphy->reg_notifier = mt76x02_regd_notifier;
		wiphy->iface_combinations = mt76x02_if_comb;
		wiphy->n_iface_combinations = FUNC0(mt76x02_if_comb);
		wiphy->flags |= WIPHY_FLAG_HAS_CHANNEL_SWITCH;

		/* init led callbacks */
		if (FUNC3(CONFIG_MT76_LEDS)) {
			dev->mt76.led_cdev.brightness_set =
					mt76x02_led_set_brightness;
			dev->mt76.led_cdev.blink_set = mt76x02_led_set_blink;
		}
	}

	FUNC9(wiphy, NL80211_EXT_FEATURE_VHT_IBSS);

	hw->sta_data_size = sizeof(struct mt76x02_sta);
	hw->vif_data_size = sizeof(struct mt76x02_vif);

	FUNC4(hw, SUPPORTS_HT_CCK_RATES);
	FUNC4(hw, SUPPORTS_REORDERING_BUFFER);

	dev->mt76.global_wcid.idx = 255;
	dev->mt76.global_wcid.hw_key_idx = -1;
	dev->slottime = 9;

	if (FUNC5(dev)) {
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