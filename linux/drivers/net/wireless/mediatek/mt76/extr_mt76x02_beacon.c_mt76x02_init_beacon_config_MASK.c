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
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_BCN_BYPASS_MASK ; 
 int /*<<< orphan*/  MT_BEACON_TIME_CFG ; 
 int MT_BEACON_TIME_CFG_BEACON_TX ; 
 int /*<<< orphan*/  MT_BEACON_TIME_CFG_SYNC_MODE ; 
 int MT_BEACON_TIME_CFG_TBTT_EN ; 
 int MT_BEACON_TIME_CFG_TIMER_EN ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*) ; 

void FUNC5(struct mt76x02_dev *dev)
{
	int i;

	FUNC0(dev, MT_BEACON_TIME_CFG, (MT_BEACON_TIME_CFG_TIMER_EN |
					     MT_BEACON_TIME_CFG_TBTT_EN |
					     MT_BEACON_TIME_CFG_BEACON_TX));
	FUNC1(dev, MT_BEACON_TIME_CFG, MT_BEACON_TIME_CFG_SYNC_MODE);
	FUNC2(dev, MT_BCN_BYPASS_MASK, 0xffff);

	for (i = 0; i < 8; i++)
		FUNC3(dev, i, NULL);

	FUNC4(dev);
}