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
struct v4l2_dv_timings {int dummy; } ;
struct adv748x_state {int dummy; } ;
struct adv748x_hdmi_video_standards {int vid_std; int v_freq; int /*<<< orphan*/  timings; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV748X_IO_DATAPATH ; 
 int /*<<< orphan*/  ADV748X_IO_DATAPATH_VFREQ_M ; 
 int ADV748X_IO_DATAPATH_VFREQ_SHIFT ; 
 int /*<<< orphan*/  ADV748X_IO_VID_STD ; 
 unsigned int FUNC0 (struct adv748x_hdmi_video_standards*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct adv748x_state*,int) ; 
 struct adv748x_hdmi_video_standards* adv748x_hdmi_video_standards ; 
 int /*<<< orphan*/  FUNC2 (struct adv748x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adv748x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_dv_timings const*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC5(struct adv748x_state *state,
					  const struct v4l2_dv_timings *timings)
{
	const struct adv748x_hdmi_video_standards *stds =
		adv748x_hdmi_video_standards;
	unsigned int i;

	for (i = 0; i < FUNC0(adv748x_hdmi_video_standards); i++) {
		if (!FUNC4(timings, &stds[i].timings, 250000,
					   false))
			continue;
	}

	if (i >= FUNC0(adv748x_hdmi_video_standards))
		return -EINVAL;

	/*
	 * When setting cp_vid_std to either 720p, 1080i, or 1080p, the video
	 * will get shifted horizontally to the left in active video mode.
	 * The de_h_start and de_h_end controls are used to centre the picture
	 * correctly
	 */
	switch (stds[i].vid_std) {
	case 0x53: /* 720p */
		FUNC1(state, -40);
		break;
	case 0x54: /* 1080i */
	case 0x5e: /* 1080p */
		FUNC1(state, -44);
		break;
	default:
		FUNC1(state, 0);
		break;
	}

	FUNC3(state, ADV748X_IO_VID_STD, stds[i].vid_std);
	FUNC2(state, ADV748X_IO_DATAPATH, ADV748X_IO_DATAPATH_VFREQ_M,
		  stds[i].v_freq << ADV748X_IO_DATAPATH_VFREQ_SHIFT);

	return 0;
}