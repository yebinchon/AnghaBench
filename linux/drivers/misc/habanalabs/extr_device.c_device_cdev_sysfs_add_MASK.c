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
struct hl_device {int cdev_sysfs_created; int /*<<< orphan*/  dev; int /*<<< orphan*/  cdev; int /*<<< orphan*/  dev_ctrl; int /*<<< orphan*/  cdev_ctrl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct hl_device*) ; 

__attribute__((used)) static int FUNC4(struct hl_device *hdev)
{
	int rc;

	rc = FUNC0(&hdev->cdev, hdev->dev);
	if (rc) {
		FUNC2(hdev->dev,
			"failed to add a char device to the system\n");
		return rc;
	}

	rc = FUNC0(&hdev->cdev_ctrl, hdev->dev_ctrl);
	if (rc) {
		FUNC2(hdev->dev,
			"failed to add a control char device to the system\n");
		goto delete_cdev_device;
	}

	/* hl_sysfs_init() must be done after adding the device to the system */
	rc = FUNC3(hdev);
	if (rc) {
		FUNC2(hdev->dev, "failed to initialize sysfs\n");
		goto delete_ctrl_cdev_device;
	}

	hdev->cdev_sysfs_created = true;

	return 0;

delete_ctrl_cdev_device:
	FUNC1(&hdev->cdev_ctrl, hdev->dev_ctrl);
delete_cdev_device:
	FUNC1(&hdev->cdev, hdev->dev);
	return rc;
}