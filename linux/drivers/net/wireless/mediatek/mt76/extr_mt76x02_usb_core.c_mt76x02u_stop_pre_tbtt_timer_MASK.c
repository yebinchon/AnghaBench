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
struct mt76x02_dev {int /*<<< orphan*/  pre_tbtt_work; int /*<<< orphan*/  pre_tbtt_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mt76x02_dev *dev)
{
	do {
		FUNC2(&dev->pre_tbtt_timer);
		FUNC0(&dev->pre_tbtt_work);
		/* Timer can be rearmed by work. */
	} while (FUNC1(&dev->pre_tbtt_timer));
}