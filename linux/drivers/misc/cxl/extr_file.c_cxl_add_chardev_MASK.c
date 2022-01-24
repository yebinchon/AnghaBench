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
struct file_operations {int dummy; } ;
struct device {int dummy; } ;
struct cxl_afu {int /*<<< orphan*/  dev; int /*<<< orphan*/  slice; TYPE_1__* adapter; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {int /*<<< orphan*/  adapter_num; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int FUNC2 (struct cdev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct cdev*,struct file_operations const*) ; 
 int /*<<< orphan*/  cxl_class ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,int) ; 
 struct device* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cxl_afu*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct cxl_afu *afu, dev_t devt, struct cdev *cdev,
			   struct device **chardev, char *postfix, char *desc,
			   const struct file_operations *fops)
{
	struct device *dev;
	int rc;

	FUNC4(cdev, fops);
	if ((rc = FUNC2(cdev, devt, 1))) {
		FUNC5(&afu->dev, "Unable to add %s chardev: %i\n", desc, rc);
		return rc;
	}

	dev = FUNC6(cxl_class, &afu->dev, devt, afu,
			"afu%i.%i%s", afu->adapter->adapter_num, afu->slice, postfix);
	if (FUNC0(dev)) {
		FUNC5(&afu->dev, "Unable to create %s chardev in sysfs: %i\n", desc, rc);
		rc = FUNC1(dev);
		goto err;
	}

	*chardev = dev;

	return 0;
err:
	FUNC3(cdev);
	return rc;
}