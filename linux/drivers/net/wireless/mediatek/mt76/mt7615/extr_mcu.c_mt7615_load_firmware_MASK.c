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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_STATE_CR4_RDY ; 
 scalar_t__ FW_STATE_FW_DOWNLOAD ; 
 int /*<<< orphan*/  MT_TOP_MISC2 ; 
 int /*<<< orphan*/  MT_TOP_MISC2_FW_STATE ; 
 int /*<<< orphan*/  MT_TXQ_FWDL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct mt7615_dev*) ; 
 int FUNC4 (struct mt7615_dev*) ; 
 scalar_t__ FUNC5 (struct mt7615_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7615_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7615_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct mt7615_dev *dev)
{
	int ret;
	u32 val;

	val = FUNC5(dev, MT_TOP_MISC2, MT_TOP_MISC2_FW_STATE);

	if (val != FW_STATE_FW_DOWNLOAD) {
		FUNC2(dev->mt76.dev, "Firmware is not ready for download\n");
		return -EIO;
	}

	ret = FUNC3(dev);
	if (ret)
		return ret;

	ret = FUNC4(dev);
	if (ret)
		return ret;

	if (!FUNC6(dev, MT_TOP_MISC2, MT_TOP_MISC2_FW_STATE,
			    FUNC0(MT_TOP_MISC2_FW_STATE,
				       FW_STATE_CR4_RDY), 500)) {
		FUNC2(dev->mt76.dev, "Timeout for initializing firmware\n");
		return -EIO;
	}

	FUNC7(dev, MT_TXQ_FWDL, false);

	FUNC1(dev->mt76.dev, "Firmware init done\n");

	return 0;
}