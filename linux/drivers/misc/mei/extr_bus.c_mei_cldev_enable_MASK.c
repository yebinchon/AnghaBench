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
struct mei_cl_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  me_cl; struct mei_cl* cl; struct mei_device* bus; } ;
struct mei_cl {scalar_t__ state; struct mei_cl_device* cldev; } ;

/* Variables and functions */
 int ENOTTY ; 
 scalar_t__ MEI_FILE_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct mei_cl*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mei_cl*) ; 
 int FUNC3 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct mei_cl_device *cldev)
{
	struct mei_device *bus = cldev->bus;
	struct mei_cl *cl;
	int ret;

	cl = cldev->cl;

	FUNC5(&bus->device_lock);
	if (cl->state == MEI_FILE_UNINITIALIZED) {
		ret = FUNC3(cl);
		if (ret)
			goto out;
		/* update pointers */
		cl->cldev = cldev;
	}

	if (FUNC2(cl)) {
		ret = 0;
		goto out;
	}

	if (!FUNC4(cldev->me_cl)) {
		FUNC0(&cldev->dev, "me client is not active\n");
		ret = -ENOTTY;
		goto out;
	}

	ret = FUNC1(cl, cldev->me_cl, NULL);
	if (ret < 0)
		FUNC0(&cldev->dev, "cannot connect\n");

out:
	FUNC6(&bus->device_lock);

	return ret;
}