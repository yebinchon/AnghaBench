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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;
struct ieee80211_hw {struct mt7615_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mt7615_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ieee80211_hw *hw, u32 val)
{
	struct mt7615_dev *dev = hw->priv;

	FUNC1(&dev->mt76.mutex);
	FUNC0(dev, val);
	FUNC2(&dev->mt76.mutex);

	return 0;
}