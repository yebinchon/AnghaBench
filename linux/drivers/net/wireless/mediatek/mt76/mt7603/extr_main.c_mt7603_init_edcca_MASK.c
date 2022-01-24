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
struct mt7603_dev {int ed_strict_mode; int /*<<< orphan*/  ed_time; scalar_t__ ed_strong_signal; scalar_t__ ed_monitor; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_MIB_CTL ; 
 int /*<<< orphan*/  MT_MIB_CTL_ED_TIME ; 
 int /*<<< orphan*/  MT_MIB_STAT_ED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MT_RXTD_8_LOWER_SIGNAL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mt7603_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct mt7603_dev *dev)
{
	/* Set lower signal level to -65dBm */
	FUNC4(dev, FUNC0(8), MT_RXTD_8_LOWER_SIGNAL, 0x23);

	/* clear previous energy detect monitor results */
	FUNC5(dev, MT_MIB_STAT_ED);

	if (dev->ed_monitor)
		FUNC6(dev, MT_MIB_CTL, MT_MIB_CTL_ED_TIME);
	else
		FUNC3(dev, MT_MIB_CTL, MT_MIB_CTL_ED_TIME);

	dev->ed_strict_mode = 0xff;
	dev->ed_strong_signal = 0;
	dev->ed_time = FUNC1();

	FUNC2(dev, false);
}