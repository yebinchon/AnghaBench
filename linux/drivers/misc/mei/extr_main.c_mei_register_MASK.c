#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  owner; } ;
struct mei_device {TYPE_2__ cdev; int /*<<< orphan*/  minor; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 int FUNC4 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 struct device* FUNC9 (int /*<<< orphan*/ ,struct device*,int,struct mei_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mei_class ; 
 int /*<<< orphan*/  FUNC10 (struct mei_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mei_devt ; 
 int /*<<< orphan*/  mei_fops ; 
 int /*<<< orphan*/  mei_groups ; 
 int /*<<< orphan*/  FUNC11 (struct mei_device*) ; 
 int FUNC12 (struct mei_device*) ; 

int FUNC13(struct mei_device *dev, struct device *parent)
{
	struct device *clsdev; /* class device */
	int ret, devno;

	ret = FUNC12(dev);
	if (ret < 0)
		return ret;

	/* Fill in the data structures */
	devno = FUNC2(FUNC1(mei_devt), dev->minor);
	FUNC6(&dev->cdev, &mei_fops);
	dev->cdev.owner = parent->driver->owner;

	/* Add the device */
	ret = FUNC4(&dev->cdev, devno, 1);
	if (ret) {
		FUNC7(parent, "unable to add device %d:%d\n",
			FUNC1(mei_devt), dev->minor);
		goto err_dev_add;
	}

	clsdev = FUNC9(mei_class, parent, devno,
					   dev, mei_groups,
					   "mei%d", dev->minor);

	if (FUNC0(clsdev)) {
		FUNC7(parent, "unable to create device %d:%d\n",
			FUNC1(mei_devt), dev->minor);
		ret = FUNC3(clsdev);
		goto err_dev_create;
	}

	FUNC10(dev, FUNC8(clsdev));

	return 0;

err_dev_create:
	FUNC5(&dev->cdev);
err_dev_add:
	FUNC11(dev);
	return ret;
}