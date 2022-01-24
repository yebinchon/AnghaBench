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
struct wiphy {int interface_modes; int /*<<< orphan*/  reg_notifier; int /*<<< orphan*/  flags; int /*<<< orphan*/  n_iface_combinations; int /*<<< orphan*/  iface_combinations; } ;
struct mt76_bus_ops {int /*<<< orphan*/  rmw; int /*<<< orphan*/  wr; int /*<<< orphan*/  rr; } ;
struct mt7603_vif {int dummy; } ;
struct mt7603_sta {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  sband; } ;
struct TYPE_4__ {int /*<<< orphan*/  blink_set; int /*<<< orphan*/  brightness_set; } ;
struct TYPE_6__ {int antenna_mask; TYPE_2__ sband_2g; TYPE_1__ led_cdev; int /*<<< orphan*/  pre_tbtt_tasklet; int /*<<< orphan*/  mac_work; struct mt76_bus_ops* bus; int /*<<< orphan*/  dev; } ;
struct mt7603_dev {int slottime; TYPE_3__ mt76; int /*<<< orphan*/  ps_lock; struct mt76_bus_ops* bus_ops; } ;
struct ieee80211_hw {int queues; int max_rates; int max_report_rates; int max_rate_tries; int sta_data_size; int vif_data_size; struct wiphy* wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  CONFIG_MT76_LEDS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ MT_EFUSE_BASE ; 
 int NL80211_IFTYPE_ADHOC ; 
 int NL80211_IFTYPE_AP ; 
 int NL80211_IFTYPE_MESH_POINT ; 
 int NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  SUPPORTS_REORDERING_BUFFER ; 
 int /*<<< orphan*/  TX_STATUS_NO_AMPDU_LEN ; 
 int /*<<< orphan*/  WIPHY_FLAG_HAS_CHANNEL_SWITCH ; 
 struct mt76_bus_ops* FUNC4 (int /*<<< orphan*/ ,struct mt76_bus_ops*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  if_comb ; 
 int /*<<< orphan*/  FUNC6 (struct mt7603_dev*) ; 
 int FUNC7 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7603_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mt7603_led_set_blink ; 
 int /*<<< orphan*/  mt7603_led_set_brightness ; 
 int /*<<< orphan*/  mt7603_mac_work ; 
 int /*<<< orphan*/  mt7603_pre_tbtt_tasklet ; 
 int /*<<< orphan*/  mt7603_rates ; 
 int /*<<< orphan*/  mt7603_regd_notifier ; 
 int /*<<< orphan*/  mt7603_rmw ; 
 int /*<<< orphan*/  mt7603_rr ; 
 int /*<<< orphan*/  mt7603_wr ; 
 struct ieee80211_hw* FUNC9 (struct mt7603_dev*) ; 
 int FUNC10 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct mt7603_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC14(struct mt7603_dev *dev)
{
	struct mt76_bus_ops *bus_ops;
	struct ieee80211_hw *hw = FUNC9(dev);
	struct wiphy *wiphy = hw->wiphy;
	int ret;

	dev->bus_ops = dev->mt76.bus;
	bus_ops = FUNC4(dev->mt76.dev, dev->bus_ops, sizeof(*bus_ops),
			       GFP_KERNEL);
	if (!bus_ops)
		return -ENOMEM;

	bus_ops->rr = mt7603_rr;
	bus_ops->wr = mt7603_wr;
	bus_ops->rmw = mt7603_rmw;
	dev->mt76.bus = bus_ops;

	FUNC12(&dev->ps_lock);

	FUNC2(&dev->mt76.mac_work, mt7603_mac_work);
	FUNC13(&dev->mt76.pre_tbtt_tasklet, mt7603_pre_tbtt_tasklet,
		     (unsigned long)dev);

	/* Check for 7688, which only has 1SS */
	dev->mt76.antenna_mask = 3;
	if (FUNC11(dev, MT_EFUSE_BASE + 0x64) & FUNC1(4))
		dev->mt76.antenna_mask = 1;

	dev->slottime = 9;

	ret = FUNC7(dev);
	if (ret)
		return ret;

	hw->queues = 4;
	hw->max_rates = 3;
	hw->max_report_rates = 7;
	hw->max_rate_tries = 11;

	hw->sta_data_size = sizeof(struct mt7603_sta);
	hw->vif_data_size = sizeof(struct mt7603_vif);

	wiphy->iface_combinations = if_comb;
	wiphy->n_iface_combinations = FUNC0(if_comb);

	FUNC5(hw, SUPPORTS_REORDERING_BUFFER);
	FUNC5(hw, TX_STATUS_NO_AMPDU_LEN);

	/* init led callbacks */
	if (FUNC3(CONFIG_MT76_LEDS)) {
		dev->mt76.led_cdev.brightness_set = mt7603_led_set_brightness;
		dev->mt76.led_cdev.blink_set = mt7603_led_set_blink;
	}

	wiphy->interface_modes =
		FUNC1(NL80211_IFTYPE_STATION) |
		FUNC1(NL80211_IFTYPE_AP) |
#ifdef CONFIG_MAC80211_MESH
		BIT(NL80211_IFTYPE_MESH_POINT) |
#endif
		FUNC1(NL80211_IFTYPE_ADHOC);

	wiphy->flags |= WIPHY_FLAG_HAS_CHANNEL_SWITCH;

	wiphy->reg_notifier = mt7603_regd_notifier;

	ret = FUNC10(&dev->mt76, true, mt7603_rates,
				   FUNC0(mt7603_rates));
	if (ret)
		return ret;

	FUNC6(dev);
	FUNC8(dev, &dev->mt76.sband_2g.sband);

	return 0;
}