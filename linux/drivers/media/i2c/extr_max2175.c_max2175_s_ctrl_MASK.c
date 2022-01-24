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
struct v4l2_ctrl {int /*<<< orphan*/  val; int /*<<< orphan*/  id; int /*<<< orphan*/  handler; } ;
struct max2175 {int dummy; } ;

/* Variables and functions */
#define  V4L2_CID_MAX2175_HSLS 130 
#define  V4L2_CID_MAX2175_I2S_ENABLE 129 
#define  V4L2_CID_MAX2175_RX_MODE 128 
 struct max2175* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct max2175*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct max2175*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_ctrl *ctrl)
{
	struct max2175 *ctx = FUNC0(ctrl->handler);

	FUNC4(ctx, "s_ctrl: id 0x%x, val %u\n", ctrl->id, ctrl->val);
	switch (ctrl->id) {
	case V4L2_CID_MAX2175_I2S_ENABLE:
		FUNC1(ctx, ctrl->val);
		break;
	case V4L2_CID_MAX2175_HSLS:
		FUNC3(ctx, ctrl->val);
		break;
	case V4L2_CID_MAX2175_RX_MODE:
		FUNC2(ctx, ctrl->val);
		break;
	}

	return 0;
}