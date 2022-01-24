#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ hw_revision; int /*<<< orphan*/  model; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_2__* mdev; } ;
struct xvip_composite_device {TYPE_2__ media_dev; int /*<<< orphan*/  dev; TYPE_1__ v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct xvip_composite_device *xdev)
{
	int ret;

	xdev->media_dev.dev = xdev->dev;
	FUNC3(xdev->media_dev.model, "Xilinx Video Composite Device",
		sizeof(xdev->media_dev.model));
	xdev->media_dev.hw_revision = 0;

	FUNC2(&xdev->media_dev);

	xdev->v4l2_dev.mdev = &xdev->media_dev;
	ret = FUNC4(xdev->dev, &xdev->v4l2_dev);
	if (ret < 0) {
		FUNC0(xdev->dev, "V4L2 device registration failed (%d)\n",
			ret);
		FUNC1(&xdev->media_dev);
		return ret;
	}

	return 0;
}