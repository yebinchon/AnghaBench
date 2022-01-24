#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {TYPE_1__* volume; TYPE_2__* mute; } ;
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_BALANCE 131 
#define  V4L2_CID_AUDIO_BASS 130 
#define  V4L2_CID_AUDIO_TREBLE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC3 (struct v4l2_ctrl*) ; 
 struct cx25840_state* FUNC4 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC3(ctrl);
	struct cx25840_state *state = FUNC4(sd);
	struct i2c_client *client = FUNC5(sd);

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_VOLUME:
		if (state->mute->val)
			FUNC2(client, 0);
		else
			FUNC2(client, state->volume->val);
		break;
	case V4L2_CID_AUDIO_BASS:
		/* PATH1_EQ_BASS_VOL */
		FUNC0(client, 0x8d9, ~0x3f,
					48 - (ctrl->val * 48 / 0xffff));
		break;
	case V4L2_CID_AUDIO_TREBLE:
		/* PATH1_EQ_TREBLE_VOL */
		FUNC0(client, 0x8db, ~0x3f,
					48 - (ctrl->val * 48 / 0xffff));
		break;
	case V4L2_CID_AUDIO_BALANCE:
		FUNC1(client, ctrl->val);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}