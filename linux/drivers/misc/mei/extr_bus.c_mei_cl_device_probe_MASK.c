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
struct mei_cl_driver {int (* probe ) (struct mei_cl_device*,struct mei_cl_device_id const*) ;} ;
struct mei_cl_device_id {int dummy; } ;
struct mei_cl_device {int /*<<< orphan*/  dev; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_cl_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_cl_device*) ; 
 struct mei_cl_device_id* FUNC4 (struct mei_cl_device*,struct mei_cl_driver*) ; 
 int FUNC5 (struct mei_cl_device*,struct mei_cl_device_id const*) ; 
 struct mei_cl_device* FUNC6 (struct device*) ; 
 struct mei_cl_driver* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct mei_cl_device *cldev;
	struct mei_cl_driver *cldrv;
	const struct mei_cl_device_id *id;
	int ret;

	cldev = FUNC6(dev);
	cldrv = FUNC7(dev->driver);

	if (!cldev)
		return 0;

	if (!cldrv || !cldrv->probe)
		return -ENODEV;

	id = FUNC4(cldev, cldrv);
	if (!id)
		return -ENODEV;

	if (!FUNC2(cldev)) {
		FUNC1(&cldev->dev, "get hw module failed");
		return -ENODEV;
	}

	ret = cldrv->probe(cldev, id);
	if (ret) {
		FUNC3(cldev);
		return ret;
	}

	FUNC0(THIS_MODULE);
	return 0;
}