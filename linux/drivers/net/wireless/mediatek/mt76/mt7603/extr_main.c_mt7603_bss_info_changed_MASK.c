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
typedef  int u32 ;
struct mt7603_vif {int /*<<< orphan*/  idx; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  pre_tbtt_tasklet; } ;
struct mt7603_dev {int slottime; TYPE_1__ mt76; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct mt7603_dev* priv; } ;
struct ieee80211_bss_conf {int beacon_int; int /*<<< orphan*/  enable_beacon; scalar_t__ use_short_slot; scalar_t__ bssid; scalar_t__ ibss_joined; scalar_t__ assoc; } ;

/* Variables and functions */
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 int BSS_CHANGED_BEACON_INT ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_ERP_SLOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MT_BSSID1_VALID ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
			struct ieee80211_bss_conf *info, u32 changed)
{
	struct mt7603_dev *dev = hw->priv;
	struct mt7603_vif *mvif = (struct mt7603_vif *)vif->drv_priv;

	FUNC7(&dev->mt76.mutex);

	if (changed & (BSS_CHANGED_ASSOC | BSS_CHANGED_BSSID)) {
		if (info->assoc || info->ibss_joined) {
			FUNC6(dev, FUNC0(mvif->idx),
				FUNC3(info->bssid));
			FUNC6(dev, FUNC1(mvif->idx),
				(FUNC2(info->bssid + 4) |
				 MT_BSSID1_VALID));
		} else {
			FUNC6(dev, FUNC0(mvif->idx), 0);
			FUNC6(dev, FUNC1(mvif->idx), 0);
		}
	}

	if (changed & BSS_CHANGED_ERP_SLOT) {
		int slottime = info->use_short_slot ? 9 : 20;

		if (slottime != dev->slottime) {
			dev->slottime = slottime;
			FUNC5(dev);
		}
	}

	if (changed & (BSS_CHANGED_BEACON_ENABLED | BSS_CHANGED_BEACON_INT)) {
		int beacon_int = !!info->enable_beacon * info->beacon_int;

		FUNC9(&dev->mt76.pre_tbtt_tasklet);
		FUNC4(dev, mvif->idx, beacon_int);
		FUNC10(&dev->mt76.pre_tbtt_tasklet);
	}

	FUNC8(&dev->mt76.mutex);
}