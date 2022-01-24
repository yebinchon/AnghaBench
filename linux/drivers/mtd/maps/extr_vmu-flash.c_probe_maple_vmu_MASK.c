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
struct maple_driver {int dummy; } ;
struct maple_device {struct maple_driver* driver; int /*<<< orphan*/  fileerr_handler; int /*<<< orphan*/  can_unload; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct maple_device* FUNC0 (struct device*) ; 
 struct maple_driver* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmu_can_unload ; 
 int FUNC2 (struct maple_device*) ; 
 int /*<<< orphan*/  vmu_file_error ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	int error;
	struct maple_device *mdev = FUNC0(dev);
	struct maple_driver *mdrv = FUNC1(dev->driver);

	mdev->can_unload = vmu_can_unload;
	mdev->fileerr_handler = vmu_file_error;
	mdev->driver = mdrv;

	error = FUNC2(mdev);
	if (error)
		return error;

	return 0;
}