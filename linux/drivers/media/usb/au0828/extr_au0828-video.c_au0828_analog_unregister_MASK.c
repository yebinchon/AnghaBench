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
struct au0828_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  vbi_dev; int /*<<< orphan*/  vdev; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ AU0828_VMUX_UNDEFINED ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  au0828_sysfs_lock ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct au0828_dev *dev)
{
	FUNC1(1, "au0828_analog_unregister called\n");

	/* No analog TV */
	if (FUNC0(0).type == AU0828_VMUX_UNDEFINED)
		return 0;

	FUNC2(&au0828_sysfs_lock);
	FUNC6(&dev->vdev);
	FUNC6(&dev->vbi_dev);
	FUNC3(&au0828_sysfs_lock);

	FUNC4(&dev->v4l2_dev);
	FUNC5(&dev->v4l2_dev);

	return 1;
}