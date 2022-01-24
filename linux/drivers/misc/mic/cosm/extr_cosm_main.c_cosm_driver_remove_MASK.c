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
struct cosm_device {int /*<<< orphan*/  bootmode; int /*<<< orphan*/  ramdisk; int /*<<< orphan*/  firmware; int /*<<< orphan*/  cmdline; int /*<<< orphan*/  reset_trigger_work; int /*<<< orphan*/  index; int /*<<< orphan*/  state_sysfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cosm_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cosm_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_cosm_class ; 
 int /*<<< orphan*/  g_num_dev ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct cosm_device *cdev)
{
	FUNC2(cdev);
	FUNC8(cdev->state_sysfs);
	FUNC5(g_cosm_class, FUNC0(0, cdev->index));
	FUNC6(&cdev->reset_trigger_work);
	FUNC4(cdev, false);
	if (FUNC1(&g_num_dev))
		FUNC3();

	/* These sysfs entries might have allocated */
	FUNC7(cdev->cmdline);
	FUNC7(cdev->firmware);
	FUNC7(cdev->ramdisk);
	FUNC7(cdev->bootmode);
}