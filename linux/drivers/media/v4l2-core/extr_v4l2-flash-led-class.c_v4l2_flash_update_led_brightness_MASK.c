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
struct v4l2_flash {struct led_classdev* iled_cdev; TYPE_1__* fled_cdev; struct v4l2_ctrl** ctrls; } ;
struct v4l2_ctrl {scalar_t__ val; } ;
struct led_classdev {int /*<<< orphan*/  brightness; } ;
struct TYPE_2__ {struct led_classdev led_cdev; } ;

/* Variables and functions */
 size_t LED_MODE ; 
 size_t TORCH_INTENSITY ; 
 scalar_t__ V4L2_FLASH_LED_MODE_TORCH ; 
 scalar_t__ FUNC0 (struct v4l2_ctrl*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct v4l2_flash*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct v4l2_flash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  led_brightness_to_intensity ; 
 int FUNC3 (struct led_classdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_flash *v4l2_flash,
					struct v4l2_ctrl *ctrl)
{
	struct v4l2_ctrl **ctrls = v4l2_flash->ctrls;
	struct led_classdev *led_cdev;
	int ret;

	if (ctrl == ctrls[TORCH_INTENSITY]) {
		/*
		 * Update torch brightness only if in TORCH_MODE. In other modes
		 * torch led is turned off, which would spuriously inform the
		 * user space that V4L2_CID_FLASH_TORCH_INTENSITY control value
		 * has changed to 0.
		 */
		if (ctrls[LED_MODE]->val != V4L2_FLASH_LED_MODE_TORCH)
			return 0;
		led_cdev = &v4l2_flash->fled_cdev->led_cdev;
	} else {
		led_cdev = v4l2_flash->iled_cdev;
	}

	ret = FUNC3(led_cdev);
	if (ret < 0)
		return ret;

	if (FUNC2(v4l2_flash, led_brightness_to_intensity))
		ctrl->val = FUNC1(v4l2_flash,
						led_brightness_to_intensity,
						led_cdev->brightness);
	else
		ctrl->val = FUNC0(ctrl,
						led_cdev->brightness);

	return 0;
}