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
typedef  int u8 ;
struct v4l2_ctrl {int id; int val; } ;
struct lm3560_flash {int led_mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
typedef  enum lm3560_led_id { ____Placeholder_lm3560_led_id } lm3560_led_id ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_CONFIG1 ; 
 int /*<<< orphan*/  REG_FLASH_TOUT ; 
#define  V4L2_CID_FLASH_INTENSITY 134 
#define  V4L2_CID_FLASH_LED_MODE 133 
#define  V4L2_CID_FLASH_STROBE 132 
#define  V4L2_CID_FLASH_STROBE_SOURCE 131 
#define  V4L2_CID_FLASH_STROBE_STOP 130 
#define  V4L2_CID_FLASH_TIMEOUT 129 
#define  V4L2_CID_FLASH_TORCH_INTENSITY 128 
 int V4L2_FLASH_LED_MODE_FLASH ; 
 int V4L2_FLASH_LED_MODE_NONE ; 
 int FUNC1 (struct lm3560_flash*,int,int) ; 
 int FUNC2 (struct lm3560_flash*) ; 
 int FUNC3 (struct lm3560_flash*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct lm3560_flash* FUNC7 (struct v4l2_ctrl*,int) ; 

__attribute__((used)) static int FUNC8(struct v4l2_ctrl *ctrl, enum lm3560_led_id led_no)
{
	struct lm3560_flash *flash = FUNC7(ctrl, led_no);
	u8 tout_bits;
	int rval = -EINVAL;

	FUNC4(&flash->lock);

	switch (ctrl->id) {
	case V4L2_CID_FLASH_LED_MODE:
		flash->led_mode = ctrl->val;
		if (flash->led_mode != V4L2_FLASH_LED_MODE_FLASH)
			rval = FUNC2(flash);
		break;

	case V4L2_CID_FLASH_STROBE_SOURCE:
		rval = FUNC6(flash->regmap,
					  REG_CONFIG1, 0x04, (ctrl->val) << 2);
		if (rval < 0)
			goto err_out;
		break;

	case V4L2_CID_FLASH_STROBE:
		if (flash->led_mode != V4L2_FLASH_LED_MODE_FLASH) {
			rval = -EBUSY;
			goto err_out;
		}
		flash->led_mode = V4L2_FLASH_LED_MODE_FLASH;
		rval = FUNC2(flash);
		break;

	case V4L2_CID_FLASH_STROBE_STOP:
		if (flash->led_mode != V4L2_FLASH_LED_MODE_FLASH) {
			rval = -EBUSY;
			goto err_out;
		}
		flash->led_mode = V4L2_FLASH_LED_MODE_NONE;
		rval = FUNC2(flash);
		break;

	case V4L2_CID_FLASH_TIMEOUT:
		tout_bits = FUNC0(ctrl->val);
		rval = FUNC6(flash->regmap,
					  REG_FLASH_TOUT, 0x1f, tout_bits);
		break;

	case V4L2_CID_FLASH_INTENSITY:
		rval = FUNC1(flash, led_no, ctrl->val);
		break;

	case V4L2_CID_FLASH_TORCH_INTENSITY:
		rval = FUNC3(flash, led_no, ctrl->val);
		break;
	}

err_out:
	FUNC5(&flash->lock);
	return rval;
}