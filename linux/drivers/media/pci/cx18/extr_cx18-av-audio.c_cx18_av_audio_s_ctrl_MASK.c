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
struct v4l2_ctrl {int id; int /*<<< orphan*/  val; } ;
struct cx18 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_BALANCE 132 
#define  V4L2_CID_AUDIO_BASS 131 
#define  V4L2_CID_AUDIO_MUTE 130 
#define  V4L2_CID_AUDIO_TREBLE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int /*<<< orphan*/  FUNC0 (struct cx18*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18*,int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC5 (struct v4l2_ctrl*) ; 
 struct cx18* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC5(ctrl);
	struct cx18 *cx = FUNC6(sd);

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_VOLUME:
		FUNC4(cx, ctrl->val);
		break;
	case V4L2_CID_AUDIO_BASS:
		FUNC1(cx, ctrl->val);
		break;
	case V4L2_CID_AUDIO_TREBLE:
		FUNC3(cx, ctrl->val);
		break;
	case V4L2_CID_AUDIO_BALANCE:
		FUNC0(cx, ctrl->val);
		break;
	case V4L2_CID_AUDIO_MUTE:
		FUNC2(cx, ctrl->val);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}