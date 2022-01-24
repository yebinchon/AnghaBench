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
struct mei_device {int /*<<< orphan*/  device_lock; int /*<<< orphan*/  dev; } ;
struct mei_cl_device {struct mei_device* bus; struct mei_cl* cl; } ;
struct mei_cl {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_cl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_cl_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct mei_cl_device *cldev)
{
	struct mei_device *bus;
	struct mei_cl *cl;
	int err;

	if (!cldev)
		return -ENODEV;

	cl = cldev->cl;

	bus = cldev->bus;

	FUNC6(cldev);

	FUNC7(&bus->device_lock);

	if (!FUNC4(cl)) {
		FUNC0(bus->dev, "Already disconnected\n");
		err = 0;
		goto out;
	}

	err = FUNC2(cl);
	if (err < 0)
		FUNC1(bus->dev, "Could not disconnect from the ME client\n");

out:
	/* Flush queues and remove any pending read */
	FUNC3(cl, NULL);
	FUNC5(cl);

	FUNC8(&bus->device_lock);
	return err;
}