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
struct mt76x02_dev {TYPE_1__ mt76; int /*<<< orphan*/  coverage_class; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ieee80211_hw *hw,
				s16 coverage_class)
{
	struct mt76x02_dev *dev = hw->priv;

	FUNC1(&dev->mt76.mutex);
	dev->coverage_class = coverage_class;
	FUNC0(dev);
	FUNC2(&dev->mt76.mutex);
}