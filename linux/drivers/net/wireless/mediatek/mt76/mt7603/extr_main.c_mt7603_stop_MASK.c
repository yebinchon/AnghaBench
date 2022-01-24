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
struct TYPE_2__ {int /*<<< orphan*/  mac_work; int /*<<< orphan*/  state; } ;
struct mt7603_dev {TYPE_1__ mt76; } ;
struct ieee80211_hw {struct mt7603_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT76_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7603_dev*) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211_hw *hw)
{
	struct mt7603_dev *dev = hw->priv;

	FUNC1(MT76_STATE_RUNNING, &dev->mt76.state);
	FUNC0(&dev->mt76.mac_work);
	FUNC2(dev);
}