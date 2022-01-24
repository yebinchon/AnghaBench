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
struct v4l2_ctrl {int id; int /*<<< orphan*/  val; } ;
struct em28xx {int /*<<< orphan*/  volume; int /*<<< orphan*/  mute; } ;

/* Variables and functions */
#define  V4L2_CID_AUDIO_MUTE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int /*<<< orphan*/  FUNC0 (struct em28xx*) ; 

__attribute__((used)) static void FUNC1(struct v4l2_ctrl *ctrl, void *priv)
{
	struct em28xx *dev = priv;

	/*
	 * In the case of non-AC97 volume controls, we still need
	 * to do some setups at em28xx, in order to mute/unmute
	 * and to adjust audio volume. However, the value ranges
	 * should be checked by the corresponding V4L subdriver.
	 */
	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		dev->mute = ctrl->val;
		FUNC0(dev);
		break;
	case V4L2_CID_AUDIO_VOLUME:
		dev->volume = ctrl->val;
		FUNC0(dev);
		break;
	}
}