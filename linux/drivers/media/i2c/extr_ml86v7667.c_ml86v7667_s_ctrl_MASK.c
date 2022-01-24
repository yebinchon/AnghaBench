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
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACCC_CHROMA_CB_MASK ; 
 int ACCC_CHROMA_CB_SHIFT ; 
 int /*<<< orphan*/  ACCC_CHROMA_CR_MASK ; 
 int ACCC_CHROMA_CR_SHIFT ; 
 int /*<<< orphan*/  ACCC_REG ; 
 int /*<<< orphan*/  ACCRC_CHROMA_MASK ; 
 int ACCRC_CHROMA_SHIFT ; 
 int /*<<< orphan*/  ACCRC_REG ; 
 int /*<<< orphan*/  CHRCA_MODE_MASK ; 
 int CHRCA_MODE_SHIFT ; 
 int /*<<< orphan*/  CHRCA_REG ; 
 int /*<<< orphan*/  CLC_CONTRAST_MASK ; 
 int /*<<< orphan*/  CLC_REG ; 
 int EINVAL ; 
 int /*<<< orphan*/  HUE_REG ; 
 int /*<<< orphan*/  LUMC_ONOFF_MASK ; 
 int LUMC_ONOFF_SHIFT ; 
 int /*<<< orphan*/  LUMC_REG ; 
 int /*<<< orphan*/  SSEPL_LUMINANCE_MASK ; 
 int /*<<< orphan*/  SSEPL_REG ; 
#define  V4L2_CID_BLUE_BALANCE 135 
#define  V4L2_CID_BRIGHTNESS 134 
#define  V4L2_CID_CHROMA_GAIN 133 
#define  V4L2_CID_COLOR_KILLER 132 
#define  V4L2_CID_CONTRAST 131 
#define  V4L2_CID_HUE 130 
#define  V4L2_CID_RED_BALANCE 129 
#define  V4L2_CID_SHARPNESS 128 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct v4l2_subdev* FUNC1 (struct v4l2_ctrl*) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC1(ctrl);
	struct i2c_client *client = FUNC2(sd);
	int ret = -EINVAL;

	switch (ctrl->id) {
	case V4L2_CID_BRIGHTNESS:
		ret = FUNC0(client, SSEPL_REG,
					 SSEPL_LUMINANCE_MASK, ctrl->val);
		break;
	case V4L2_CID_CONTRAST:
		ret = FUNC0(client, CLC_REG,
					 CLC_CONTRAST_MASK, ctrl->val);
		break;
	case V4L2_CID_CHROMA_GAIN:
		ret = FUNC0(client, ACCRC_REG, ACCRC_CHROMA_MASK,
					 ctrl->val << ACCRC_CHROMA_SHIFT);
		break;
	case V4L2_CID_HUE:
		ret = FUNC0(client, HUE_REG, ~0, ctrl->val);
		break;
	case V4L2_CID_RED_BALANCE:
		ret = FUNC0(client, ACCC_REG,
					 ACCC_CHROMA_CR_MASK,
					 ctrl->val << ACCC_CHROMA_CR_SHIFT);
		break;
	case V4L2_CID_BLUE_BALANCE:
		ret = FUNC0(client, ACCC_REG,
					 ACCC_CHROMA_CB_MASK,
					 ctrl->val << ACCC_CHROMA_CB_SHIFT);
		break;
	case V4L2_CID_SHARPNESS:
		ret = FUNC0(client, LUMC_REG,
					 LUMC_ONOFF_MASK,
					 ctrl->val << LUMC_ONOFF_SHIFT);
		break;
	case V4L2_CID_COLOR_KILLER:
		ret = FUNC0(client, CHRCA_REG,
					 CHRCA_MODE_MASK,
					 ctrl->val << CHRCA_MODE_SHIFT);
		break;
	}

	return ret;
}