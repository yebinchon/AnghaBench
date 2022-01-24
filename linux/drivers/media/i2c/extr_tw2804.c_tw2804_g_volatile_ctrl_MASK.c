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
struct v4l2_ctrl {int id; void* val; } ;
struct tw2804 {int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TW2804_REG_BLUE_BALANCE ; 
 int /*<<< orphan*/  TW2804_REG_CHROMA_GAIN ; 
 int /*<<< orphan*/  TW2804_REG_GAIN ; 
 int /*<<< orphan*/  TW2804_REG_RED_BALANCE ; 
#define  V4L2_CID_BLUE_BALANCE 131 
#define  V4L2_CID_CHROMA_GAIN 130 
#define  V4L2_CID_GAIN 129 
#define  V4L2_CID_RED_BALANCE 128 
 void* FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tw2804* FUNC1 (struct v4l2_ctrl*) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct v4l2_ctrl *ctrl)
{
	struct tw2804 *state = FUNC1(ctrl);
	struct i2c_client *client = FUNC2(&state->sd);

	switch (ctrl->id) {
	case V4L2_CID_GAIN:
		ctrl->val = FUNC0(client, TW2804_REG_GAIN, 0);
		return 0;

	case V4L2_CID_CHROMA_GAIN:
		ctrl->val = FUNC0(client, TW2804_REG_CHROMA_GAIN, 0);
		return 0;

	case V4L2_CID_BLUE_BALANCE:
		ctrl->val = FUNC0(client, TW2804_REG_BLUE_BALANCE, 0);
		return 0;

	case V4L2_CID_RED_BALANCE:
		ctrl->val = FUNC0(client, TW2804_REG_RED_BALANCE, 0);
		return 0;
	}
	return 0;
}