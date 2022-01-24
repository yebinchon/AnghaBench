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
struct lis3lv02d {scalar_t__ pm_dev; int /*<<< orphan*/  wake_thread; } ;
struct input_polled_dev {struct lis3lv02d* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct input_polled_dev *pidev)
{
	struct lis3lv02d *lis3 = pidev->private;

	FUNC0(&lis3->wake_thread, 0);
	if (lis3->pm_dev)
		FUNC1(lis3->pm_dev);
}