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
struct v4l2_subdev_fh {int /*<<< orphan*/  vfh; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_flash {struct led_classdev* iled_cdev; struct led_classdev_flash* fled_cdev; } ;
struct led_classdev {int /*<<< orphan*/  led_access; } ;
struct led_classdev_flash {struct led_classdev led_cdev; } ;

/* Variables and functions */
 int FUNC0 (struct v4l2_flash*) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct v4l2_flash* FUNC7 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
	struct v4l2_flash *v4l2_flash = FUNC7(sd);
	struct led_classdev_flash *fled_cdev = v4l2_flash->fled_cdev;
	struct led_classdev *led_cdev = fled_cdev ? &fled_cdev->led_cdev : NULL;
	struct led_classdev *led_cdev_ind = v4l2_flash->iled_cdev;
	int ret = 0;

	if (!FUNC6(&fh->vfh))
		return 0;

	if (led_cdev) {
		FUNC4(&led_cdev->led_access);

		FUNC1(led_cdev);
		FUNC3(led_cdev);

		FUNC5(&led_cdev->led_access);
	}

	if (led_cdev_ind) {
		FUNC4(&led_cdev_ind->led_access);

		FUNC1(led_cdev_ind);
		FUNC3(led_cdev_ind);

		FUNC5(&led_cdev_ind->led_access);
	}

	ret = FUNC0(v4l2_flash);
	if (ret < 0)
		goto out_sync_device;

	return 0;
out_sync_device:
	if (led_cdev) {
		FUNC4(&led_cdev->led_access);
		FUNC2(led_cdev);
		FUNC5(&led_cdev->led_access);
	}

	if (led_cdev_ind) {
		FUNC4(&led_cdev_ind->led_access);
		FUNC2(led_cdev_ind);
		FUNC5(&led_cdev_ind->led_access);
	}

	return ret;
}