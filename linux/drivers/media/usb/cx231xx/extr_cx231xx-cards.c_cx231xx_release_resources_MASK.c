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
struct cx231xx {int /*<<< orphan*/  devno; int /*<<< orphan*/  udev; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*) ; 
 int /*<<< orphan*/  cx231xx_devused ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC5 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct cx231xx *dev)
{
	FUNC2(dev);

	FUNC3(dev);

	FUNC4(dev);

	/* Release I2C buses */
	FUNC1(dev);

	/* delete v4l2 device */
	FUNC7(&dev->v4l2_dev);

	FUNC5(dev);

	FUNC6(dev->udev);

	/* Mark device as unused */
	FUNC0(dev->devno, &cx231xx_devused);
}