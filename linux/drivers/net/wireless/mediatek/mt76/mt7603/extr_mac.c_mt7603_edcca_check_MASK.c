#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct mt7603_dev {int ed_strong_signal; int ed_trigger; int /*<<< orphan*/  ed_time; int /*<<< orphan*/  ed_monitor; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MT7603_EDCCA_BLOCK_TH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MT_AGC_41_RSSI_0 ; 
 int /*<<< orphan*/  MT_AGC_41_RSSI_1 ; 
 int /*<<< orphan*/  MT_MIB_STAT_ED ; 
 int MT_MIB_STAT_ED_MASK ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7603_dev*,int) ; 
 int FUNC7 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct mt7603_dev *dev)
{
	u32 val = FUNC7(dev, FUNC1(41));
	ktime_t cur_time;
	int rssi0, rssi1;
	u32 active;
	u32 ed_busy;

	if (!dev->ed_monitor)
		return;

	rssi0 = FUNC0(MT_AGC_41_RSSI_0, val);
	if (rssi0 > 128)
		rssi0 -= 256;

	rssi1 = FUNC0(MT_AGC_41_RSSI_1, val);
	if (rssi1 > 128)
		rssi1 -= 256;

	if (FUNC5(rssi0, rssi1) >= -40 &&
	    dev->ed_strong_signal < MT7603_EDCCA_BLOCK_TH)
		dev->ed_strong_signal++;
	else if (dev->ed_strong_signal > 0)
		dev->ed_strong_signal--;

	cur_time = FUNC2();
	ed_busy = FUNC7(dev, MT_MIB_STAT_ED) & MT_MIB_STAT_ED_MASK;

	active = FUNC4(FUNC3(cur_time, dev->ed_time));
	dev->ed_time = cur_time;

	if (!active)
		return;

	if (100 * ed_busy / active > 90) {
		if (dev->ed_trigger < 0)
			dev->ed_trigger = 0;
		dev->ed_trigger++;
	} else {
		if (dev->ed_trigger > 0)
			dev->ed_trigger = 0;
		dev->ed_trigger--;
	}

	if (dev->ed_trigger > MT7603_EDCCA_BLOCK_TH ||
	    dev->ed_strong_signal < MT7603_EDCCA_BLOCK_TH / 2) {
		FUNC6(dev, true);
	} else if (dev->ed_trigger < -MT7603_EDCCA_BLOCK_TH) {
		FUNC6(dev, false);
	}

	if (dev->ed_trigger > MT7603_EDCCA_BLOCK_TH)
		dev->ed_trigger = MT7603_EDCCA_BLOCK_TH;
	else if (dev->ed_trigger < -MT7603_EDCCA_BLOCK_TH)
		dev->ed_trigger = -MT7603_EDCCA_BLOCK_TH;
}