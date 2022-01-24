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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mt7615_dev* priv; } ;
struct ieee80211_bss_conf {int /*<<< orphan*/  enable_beacon; int /*<<< orphan*/  assoc; } ;

/* Variables and functions */
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct mt7615_dev*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7615_dev*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7615_dev*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7615_dev*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif,
				    struct ieee80211_bss_conf *info,
				    u32 changed)
{
	struct mt7615_dev *dev = hw->priv;

	FUNC4(&dev->mt76.mutex);

	if (changed & BSS_CHANGED_ASSOC)
		FUNC1(dev, vif, info->assoc);

	/* TODO: update beacon content
	 * BSS_CHANGED_BEACON
	 */

	if (changed & BSS_CHANGED_BEACON_ENABLED) {
		FUNC1(dev, vif, info->enable_beacon);
		FUNC3(dev, vif, info->enable_beacon);
		FUNC2(dev, vif, info->enable_beacon);
		FUNC0(dev, vif, info->enable_beacon);
	}

	FUNC5(&dev->mt76.mutex);
}