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
struct lis3lv02d {scalar_t__ whoami; int /*<<< orphan*/  wake_thread; scalar_t__ idev; scalar_t__ pdata; scalar_t__ pm_dev; } ;
struct input_polled_dev {struct lis3lv02d* private; } ;

/* Variables and functions */
 scalar_t__ WAI_8B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_polled_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct input_polled_dev *pidev)
{
	struct lis3lv02d *lis3 = pidev->private;

	if (lis3->pm_dev)
		FUNC2(lis3->pm_dev);

	if (lis3->pdata && lis3->whoami == WAI_8B && lis3->idev)
		FUNC0(&lis3->wake_thread, 1);
	/*
	 * Update coordinates for the case where poll interval is 0 and
	 * the chip in running purely under interrupt control
	 */
	FUNC1(pidev);
}