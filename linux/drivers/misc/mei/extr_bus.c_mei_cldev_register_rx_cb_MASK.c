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
struct mei_cl_device {int /*<<< orphan*/  cl; int /*<<< orphan*/  rx_work; scalar_t__ rx_cb; struct mei_device* bus; } ;
typedef  scalar_t__ mei_cldev_cb_t ;

/* Variables and functions */
 int EALREADY ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mei_cl_bus_rx_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct mei_cl_device *cldev, mei_cldev_cb_t rx_cb)
{
	struct mei_device *bus = cldev->bus;
	int ret;

	if (!rx_cb)
		return -EINVAL;
	if (cldev->rx_cb)
		return -EALREADY;

	cldev->rx_cb = rx_cb;
	FUNC0(&cldev->rx_work, mei_cl_bus_rx_work);

	FUNC3(&bus->device_lock);
	ret = FUNC2(cldev->cl, FUNC1(cldev->cl), NULL);
	FUNC4(&bus->device_lock);
	if (ret && ret != -EBUSY)
		return ret;

	return 0;
}