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
struct mt76_dev {struct ieee80211_hw* hw; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76_dev*,int /*<<< orphan*/ *,int) ; 

void FUNC2(struct mt76_dev *dev)
{
	struct ieee80211_hw *hw = dev->hw;

	FUNC1(dev, NULL, true);
	FUNC0(hw);
}