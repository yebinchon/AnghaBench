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
struct hl_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  cdev; int /*<<< orphan*/  dev_ctrl; int /*<<< orphan*/  cdev_ctrl; int /*<<< orphan*/  cdev_sysfs_created; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hl_device *hdev)
{
	/* device_release() won't be called so must free devices explicitly */
	if (!hdev->cdev_sysfs_created) {
		FUNC2(hdev->dev_ctrl);
		FUNC2(hdev->dev);
		return;
	}

	FUNC1(hdev);
	FUNC0(&hdev->cdev_ctrl, hdev->dev_ctrl);
	FUNC0(&hdev->cdev, hdev->dev);
}