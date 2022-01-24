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
struct TYPE_2__ {scalar_t__ has_417; } ;
struct cx231xx {int /*<<< orphan*/  radio_ctrl_handler; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  vdev; TYPE_1__ board; int /*<<< orphan*/  dev; int /*<<< orphan*/  vbi_dev; int /*<<< orphan*/  radio_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct cx231xx *dev)
{

	/*FIXME: I2C IR should be disconnected */

	if (FUNC4(&dev->radio_dev))
		FUNC5(&dev->radio_dev);
	if (FUNC4(&dev->vbi_dev)) {
		FUNC1(dev->dev, "V4L2 device %s deregistered\n",
			FUNC3(&dev->vbi_dev));
		FUNC5(&dev->vbi_dev);
	}
	if (FUNC4(&dev->vdev)) {
		FUNC1(dev->dev, "V4L2 device %s deregistered\n",
			FUNC3(&dev->vdev));

		if (dev->board.has_417)
			FUNC0(dev);

		FUNC5(&dev->vdev);
	}
	FUNC2(&dev->ctrl_handler);
	FUNC2(&dev->radio_ctrl_handler);
}