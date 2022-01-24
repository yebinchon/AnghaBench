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
struct TYPE_2__ {int /*<<< orphan*/  val; } ;
struct v4l2_ctrl {scalar_t__ id; TYPE_1__ cur; } ;
struct lm3560_flash {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  enum lm3560_led_id { ____Placeholder_lm3560_led_id } lm3560_led_id ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FAULT_OVERTEMP ; 
 unsigned int FAULT_SHORT_CIRCUIT ; 
 unsigned int FAULT_TIMEOUT ; 
 int /*<<< orphan*/  REG_FLAG ; 
 scalar_t__ V4L2_CID_FLASH_FAULT ; 
 int /*<<< orphan*/  V4L2_FLASH_FAULT_OVER_TEMPERATURE ; 
 int /*<<< orphan*/  V4L2_FLASH_FAULT_SHORT_CIRCUIT ; 
 int /*<<< orphan*/  V4L2_FLASH_FAULT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct lm3560_flash* FUNC3 (struct v4l2_ctrl*,int) ; 

__attribute__((used)) static int FUNC4(struct v4l2_ctrl *ctrl, enum lm3560_led_id led_no)
{
	struct lm3560_flash *flash = FUNC3(ctrl, led_no);
	int rval = -EINVAL;

	FUNC0(&flash->lock);

	if (ctrl->id == V4L2_CID_FLASH_FAULT) {
		s32 fault = 0;
		unsigned int reg_val;
		rval = FUNC2(flash->regmap, REG_FLAG, &reg_val);
		if (rval < 0)
			goto out;
		if (reg_val & FAULT_SHORT_CIRCUIT)
			fault |= V4L2_FLASH_FAULT_SHORT_CIRCUIT;
		if (reg_val & FAULT_OVERTEMP)
			fault |= V4L2_FLASH_FAULT_OVER_TEMPERATURE;
		if (reg_val & FAULT_TIMEOUT)
			fault |= V4L2_FLASH_FAULT_TIMEOUT;
		ctrl->cur.val = fault;
	}

out:
	FUNC1(&flash->lock);
	return rval;
}