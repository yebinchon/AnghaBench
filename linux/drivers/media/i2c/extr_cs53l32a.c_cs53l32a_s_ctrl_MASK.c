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
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_MUTE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int) ; 
 struct v4l2_subdev* FUNC1 (struct v4l2_ctrl*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC1(ctrl);

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		FUNC0(sd, 0x03, ctrl->val ? 0xf0 : 0x30);
		return 0;
	case V4L2_CID_AUDIO_VOLUME:
		FUNC0(sd, 0x04, (u8)ctrl->val);
		FUNC0(sd, 0x05, (u8)ctrl->val);
		return 0;
	}
	return -EINVAL;
}