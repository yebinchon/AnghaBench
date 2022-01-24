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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct mt7615_dev {int scs_en; TYPE_1__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_MIB_M0_MISC_CR ; 
 int /*<<< orphan*/  MT_WF_PHY_B0_MIN_PRI_PWR ; 
 int MT_WF_PHY_B0_PD_BLK ; 
 int /*<<< orphan*/  MT_WF_PHY_B1_MIN_PRI_PWR ; 
 int MT_WF_PHY_B1_PD_BLK ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7615_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7615_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7615_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct mt7615_dev *dev, bool enable)
{
	FUNC4(&dev->mt76.mutex);

	if (dev->scs_en == enable)
		goto out;

	if (enable) {
		/* DBDC not supported */
		FUNC3(dev, MT_WF_PHY_B0_MIN_PRI_PWR,
			 MT_WF_PHY_B0_PD_BLK);
		if (FUNC0(&dev->mt76)) {
			FUNC3(dev, MT_MIB_M0_MISC_CR, 0x7 << 8);
			FUNC3(dev, MT_MIB_M0_MISC_CR, 0x7);
		}
	} else {
		FUNC2(dev, MT_WF_PHY_B0_MIN_PRI_PWR,
			   MT_WF_PHY_B0_PD_BLK);
		FUNC2(dev, MT_WF_PHY_B1_MIN_PRI_PWR,
			   MT_WF_PHY_B1_PD_BLK);
	}

	FUNC1(dev);
	dev->scs_en = enable;

out:
	FUNC5(&dev->mt76.mutex);
}