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
 int MT_INT_PRE_TBTT ; 
 int MT_INT_TBTT ; 
 int /*<<< orphan*/  MT_INT_TIMER_EN ; 
 int /*<<< orphan*/  MT_INT_TIMER_EN_PRE_TBTT_EN ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int) ; 

__attribute__((used)) static void FUNC3(struct mt76x02_dev *dev, bool en)
{
	FUNC0(dev, MT_INT_TIMER_EN, MT_INT_TIMER_EN_PRE_TBTT_EN, en);
	if (en)
		FUNC2(dev, MT_INT_PRE_TBTT | MT_INT_TBTT);
	else
		FUNC1(dev, MT_INT_PRE_TBTT | MT_INT_TBTT);
}