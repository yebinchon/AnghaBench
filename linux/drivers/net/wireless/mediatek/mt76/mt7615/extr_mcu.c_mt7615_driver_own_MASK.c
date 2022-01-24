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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MT_CFG_LPCR_HOST ; 
 int /*<<< orphan*/  MT_CFG_LPCR_HOST_DRV_OWN ; 
 int /*<<< orphan*/  MT_CFG_LPCR_HOST_FW_OWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7615_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7615_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mt7615_dev *dev)
{
	FUNC2(dev, MT_CFG_LPCR_HOST, MT_CFG_LPCR_HOST_DRV_OWN);
	if (!FUNC1(dev, MT_CFG_LPCR_HOST,
			    MT_CFG_LPCR_HOST_FW_OWN, 0, 500)) {
		FUNC0(dev->mt76.dev, "Timeout for driver own\n");
		return -EIO;
	}

	return 0;
}