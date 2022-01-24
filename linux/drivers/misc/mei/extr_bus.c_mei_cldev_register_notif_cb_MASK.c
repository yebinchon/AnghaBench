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
struct mei_device {int /*<<< orphan*/  device_lock; } ;
struct mei_cl_device {int /*<<< orphan*/  cl; int /*<<< orphan*/  notif_work; scalar_t__ notif_cb; struct mei_device* bus; } ;
typedef  scalar_t__ mei_cldev_cb_t ;

/* Variables and functions */
 int EALREADY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mei_cl_bus_notif_work ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct mei_cl_device *cldev,
				mei_cldev_cb_t notif_cb)
{
	struct mei_device *bus = cldev->bus;
	int ret;

	if (!notif_cb)
		return -EINVAL;

	if (cldev->notif_cb)
		return -EALREADY;

	cldev->notif_cb = notif_cb;
	FUNC0(&cldev->notif_work, mei_cl_bus_notif_work);

	FUNC2(&bus->device_lock);
	ret = FUNC1(cldev->cl, NULL, 1);
	FUNC3(&bus->device_lock);
	if (ret)
		return ret;

	return 0;
}