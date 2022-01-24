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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int idx; } ;
struct mt7603_sta {int ps; TYPE_1__ wcid; } ;
struct mt7603_dev {int /*<<< orphan*/  ps_lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_PSE_RTA ; 
 int MT_PSE_RTA_BUSY ; 
 int /*<<< orphan*/  MT_PSE_RTA_PORT_ID ; 
 int /*<<< orphan*/  MT_PSE_RTA_QUEUE_ID ; 
 int /*<<< orphan*/  MT_PSE_RTA_REDIRECT_EN ; 
 int /*<<< orphan*/  MT_PSE_RTA_TAG_ID ; 
 int MT_PSE_RTA_WRITE ; 
 int /*<<< orphan*/  MT_WTBL1_OR ; 
 int /*<<< orphan*/  MT_WTBL1_OR_PSM_WRITE ; 
 int MT_WTBL1_W3_POWER_SAVE ; 
 int /*<<< orphan*/  FUNC1 (struct mt7603_dev*,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7603_dev*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct mt7603_dev *dev, struct mt7603_sta *sta,
			bool enabled)
{
	int idx = sta->wcid.idx;
	u32 addr;

	FUNC8(&dev->ps_lock);

	if (sta->ps == enabled)
		goto out;

	FUNC7(dev, MT_PSE_RTA,
		FUNC0(MT_PSE_RTA_TAG_ID, idx) |
		FUNC0(MT_PSE_RTA_PORT_ID, 0) |
		FUNC0(MT_PSE_RTA_QUEUE_ID, 1) |
		FUNC0(MT_PSE_RTA_REDIRECT_EN, enabled) |
		MT_PSE_RTA_WRITE | MT_PSE_RTA_BUSY);

	FUNC4(dev, MT_PSE_RTA, MT_PSE_RTA_BUSY, 0, 5000);

	if (enabled)
		FUNC1(dev, idx, false);

	addr = FUNC2(idx);
	FUNC6(dev, MT_WTBL1_OR, MT_WTBL1_OR_PSM_WRITE);
	FUNC5(dev, addr + 3 * 4, MT_WTBL1_W3_POWER_SAVE,
		 enabled * MT_WTBL1_W3_POWER_SAVE);
	FUNC3(dev, MT_WTBL1_OR, MT_WTBL1_OR_PSM_WRITE);
	sta->ps = enabled;

out:
	FUNC9(&dev->ps_lock);
}