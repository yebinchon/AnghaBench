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
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_bt_timings {int /*<<< orphan*/  polarities; scalar_t__ pixelclock; scalar_t__ interlaced; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct ths7303_state {struct v4l2_bt_timings bt; scalar_t__ stream_on; } ;

/* Variables and functions */
 int /*<<< orphan*/  THS7303_CHANNEL_1 ; 
 int /*<<< orphan*/  THS7303_CHANNEL_2 ; 
 int /*<<< orphan*/  THS7303_CHANNEL_3 ; 
 int FUNC0 (struct v4l2_bt_timings*) ; 
 int FUNC1 (struct v4l2_bt_timings*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 struct ths7303_state* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,char*,...) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd)
{
	struct ths7303_state *state = FUNC3(sd);

	FUNC4(sd, "stream %s\n", state->stream_on ? "On" : "Off");

	if (state->bt.pixelclock) {
		struct v4l2_bt_timings *bt = &state->bt;
		u32 frame_width, frame_height;

		frame_width = FUNC1(bt);
		frame_height = FUNC0(bt);
		FUNC4(sd,
			  "timings: %dx%d%s%d (%dx%d). Pix freq. = %d Hz. Polarities = 0x%x\n",
			  bt->width, bt->height, bt->interlaced ? "i" : "p",
			  (frame_height * frame_width) > 0 ?
			  (int)bt->pixelclock /
			  (frame_height * frame_width) : 0,
			  frame_width, frame_height,
			  (int)bt->pixelclock, bt->polarities);
	} else {
		FUNC4(sd, "no timings set\n");
	}

	FUNC2(sd, THS7303_CHANNEL_1);
	FUNC2(sd, THS7303_CHANNEL_2);
	FUNC2(sd, THS7303_CHANNEL_3);

	return 0;
}