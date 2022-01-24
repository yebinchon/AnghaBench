#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int low_gain; scalar_t__ gain_init_done; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct mt76x02_dev {int /*<<< orphan*/  cal_work; TYPE_2__ cal; TYPE_1__ mt76; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT76_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct ieee80211_hw *hw,
			      struct ieee80211_vif *vif)
{
	struct mt76x02_dev *dev = hw->priv;

	FUNC0(MT76_SCANNING, &dev->mt76.state);
	if (dev->cal.gain_init_done) {
		/* Restore AGC gain and resume calibration after scanning. */
		dev->cal.low_gain = -1;
		FUNC1(hw, &dev->cal_work, 0);
	}
}