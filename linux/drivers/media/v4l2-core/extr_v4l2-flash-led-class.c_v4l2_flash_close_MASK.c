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
struct v4l2_flash {scalar_t__* ctrls; struct led_classdev* iled_cdev; struct led_classdev_flash* fled_cdev; } ;
struct led_classdev {int /*<<< orphan*/  led_access; } ;
struct led_classdev_flash {struct led_classdev led_cdev; } ;

/* Variables and functions */
 size_t STROBE_SOURCE ; 
 int /*<<< orphan*/  V4L2_FLASH_STROBE_SOURCE_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct v4l2_flash* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
	struct v4l2_flash *v4l2_flash = FUNC5(sd);
	struct led_classdev_flash *fled_cdev = v4l2_flash->fled_cdev;
	struct led_classdev *led_cdev = fled_cdev ? &fled_cdev->led_cdev : NULL;
	struct led_classdev *led_cdev_ind = v4l2_flash->iled_cdev;
	int ret = 0;

	if (!FUNC4(&fh->vfh))
		return 0;

	if (led_cdev) {
		FUNC1(&led_cdev->led_access);

		if (v4l2_flash->ctrls[STROBE_SOURCE])
			ret = FUNC3(
				v4l2_flash->ctrls[STROBE_SOURCE],
				V4L2_FLASH_STROBE_SOURCE_SOFTWARE);
		FUNC0(led_cdev);

		FUNC2(&led_cdev->led_access);
	}

	if (led_cdev_ind) {
		FUNC1(&led_cdev_ind->led_access);
		FUNC0(led_cdev_ind);
		FUNC2(&led_cdev_ind->led_access);
	}

	return ret;
}