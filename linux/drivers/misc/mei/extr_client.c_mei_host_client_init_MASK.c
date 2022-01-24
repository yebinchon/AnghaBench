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
struct mei_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus_rescan_work; scalar_t__ reset_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEI_DEV_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mei_device *dev)
{
	FUNC1(dev, MEI_DEV_ENABLED);
	dev->reset_count = 0;

	FUNC4(&dev->bus_rescan_work);

	FUNC3(dev->dev);
	FUNC0(dev->dev, "rpm: autosuspend\n");
	FUNC2(dev->dev);
}