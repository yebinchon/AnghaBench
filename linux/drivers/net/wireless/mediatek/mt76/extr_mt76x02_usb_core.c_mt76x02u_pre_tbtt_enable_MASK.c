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
struct TYPE_2__ {scalar_t__ beacon_mask; } ;
struct mt76x02_dev {int /*<<< orphan*/  pre_tbtt_timer; TYPE_1__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*) ; 

__attribute__((used)) static void FUNC3(struct mt76x02_dev *dev, bool en)
{
	if (en && dev->mt76.beacon_mask &&
	    !FUNC0(&dev->pre_tbtt_timer))
		FUNC1(dev);
	if (!en)
		FUNC2(dev);
}