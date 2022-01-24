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
struct v4l2_frequency {scalar_t__ tuner; int /*<<< orphan*/  frequency; } ;
struct v4l2_ctrl {int dummy; } ;
struct cx23885_dev {scalar_t__ tuner_type; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ TUNER_ABSENT ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_MUTE ; 
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  tuner ; 
 scalar_t__ FUNC2 (int) ; 
 struct v4l2_ctrl* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_ctrl*,int) ; 

__attribute__((used)) static int FUNC6(struct cx23885_dev *dev, const struct v4l2_frequency *f)
{
	struct v4l2_ctrl *mute;
	int old_mute_val = 1;

	if (dev->tuner_type == TUNER_ABSENT)
		return -EINVAL;
	if (FUNC2(f->tuner != 0))
		return -EINVAL;

	dev->freq = f->frequency;

	/* I need to mute audio here */
	mute = FUNC3(&dev->ctrl_handler, V4L2_CID_AUDIO_MUTE);
	if (mute) {
		old_mute_val = FUNC4(mute);
		if (!old_mute_val)
			FUNC5(mute, 1);
	}

	FUNC0(dev, tuner, s_frequency, f);

	/* When changing channels it is required to reset TVAUDIO */
	FUNC1(100);

	/* I need to unmute audio here */
	if (old_mute_val == 0)
		FUNC5(mute, old_mute_val);

	return 0;
}