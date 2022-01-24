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
struct v4l2_ctrl {int id; int val; } ;
struct lm3646_flash {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 unsigned int MASK_ENABLE ; 
 int /*<<< orphan*/  MASK_FLASH_BR ; 
 int /*<<< orphan*/  MASK_FLASH_TOUT ; 
 int /*<<< orphan*/  MASK_STROBE_SRC ; 
 int /*<<< orphan*/  MASK_TORCH_BR ; 
 unsigned int MODE_FLASH ; 
 unsigned int MODE_SHDN ; 
 int /*<<< orphan*/  REG_ENABLE ; 
 int /*<<< orphan*/  REG_FLASH_BR ; 
 int /*<<< orphan*/  REG_FLASH_TOUT ; 
 int /*<<< orphan*/  REG_STROBE_SRC ; 
 int /*<<< orphan*/  REG_TORCH_BR ; 
#define  V4L2_CID_FLASH_INTENSITY 134 
#define  V4L2_CID_FLASH_LED_MODE 133 
#define  V4L2_CID_FLASH_STROBE 132 
#define  V4L2_CID_FLASH_STROBE_SOURCE 131 
#define  V4L2_CID_FLASH_STROBE_STOP 130 
#define  V4L2_CID_FLASH_TIMEOUT 129 
#define  V4L2_CID_FLASH_TORCH_INTENSITY 128 
 int V4L2_FLASH_LED_MODE_FLASH ; 
 int V4L2_FLASH_LED_MODE_NONE ; 
 int FUNC3 (struct lm3646_flash*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct lm3646_flash* FUNC6 (struct v4l2_ctrl*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_ctrl *ctrl)
{
	struct lm3646_flash *flash = FUNC6(ctrl);
	unsigned int reg_val;
	int rval = -EINVAL;

	switch (ctrl->id) {
	case V4L2_CID_FLASH_LED_MODE:

		if (ctrl->val != V4L2_FLASH_LED_MODE_FLASH)
			return FUNC3(flash, ctrl->val);
		/* switch to SHDN mode before flash strobe on */
		return FUNC3(flash, V4L2_FLASH_LED_MODE_NONE);

	case V4L2_CID_FLASH_STROBE_SOURCE:
		return FUNC5(flash->regmap,
					  REG_STROBE_SRC, MASK_STROBE_SRC,
					  (ctrl->val) << 7);

	case V4L2_CID_FLASH_STROBE:

		/* read and check current mode of chip to start flash */
		rval = FUNC4(flash->regmap, REG_ENABLE, &reg_val);
		if (rval < 0 || ((reg_val & MASK_ENABLE) != MODE_SHDN))
			return rval;
		/* flash on */
		return FUNC3(flash, V4L2_FLASH_LED_MODE_FLASH);

	case V4L2_CID_FLASH_STROBE_STOP:

		/*
		 * flash mode will be turned automatically
		 * from FLASH mode to SHDN mode after flash duration timeout
		 * read and check current mode of chip to stop flash
		 */
		rval = FUNC4(flash->regmap, REG_ENABLE, &reg_val);
		if (rval < 0)
			return rval;
		if ((reg_val & MASK_ENABLE) == MODE_FLASH)
			return FUNC3(flash,
						V4L2_FLASH_LED_MODE_NONE);
		return rval;

	case V4L2_CID_FLASH_TIMEOUT:
		return FUNC5(flash->regmap,
					  REG_FLASH_TOUT, MASK_FLASH_TOUT,
					  FUNC0
					  (ctrl->val));

	case V4L2_CID_FLASH_INTENSITY:
		return FUNC5(flash->regmap,
					  REG_FLASH_BR, MASK_FLASH_BR,
					  FUNC1
					  (ctrl->val));

	case V4L2_CID_FLASH_TORCH_INTENSITY:
		return FUNC5(flash->regmap,
					  REG_TORCH_BR, MASK_TORCH_BR,
					  FUNC2
					  (ctrl->val) << 4);
	}

	return -EINVAL;
}