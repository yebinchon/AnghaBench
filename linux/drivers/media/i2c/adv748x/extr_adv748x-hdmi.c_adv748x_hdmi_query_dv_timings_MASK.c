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
struct v4l2_bt_timings {int pixelclock; scalar_t__ interlaced; int width; int height; int hfrontporch; int hsync; int hbackporch; int vfrontporch; int vsync; int vbackporch; int polarities; int il_vfrontporch; int il_vsync; int il_vbackporch; } ;
struct v4l2_dv_timings {int /*<<< orphan*/  type; struct v4l2_bt_timings bt; } ;
struct adv748x_state {int dummy; } ;
struct adv748x_hdmi {struct v4l2_dv_timings timings; } ;

/* Variables and functions */
 int ADV748X_HDMI_F0H1 ; 
 int ADV748X_HDMI_F0H1_HEIGHT_MASK ; 
 int ADV748X_HDMI_F1H1 ; 
 int ADV748X_HDMI_F1H1_INTERLACED ; 
 int ADV748X_HDMI_HBACK_PORCH ; 
 int ADV748X_HDMI_HBACK_PORCH_MASK ; 
 int ADV748X_HDMI_HFRONT_PORCH ; 
 int ADV748X_HDMI_HFRONT_PORCH_MASK ; 
 int ADV748X_HDMI_HSYNC_WIDTH ; 
 int ADV748X_HDMI_HSYNC_WIDTH_MASK ; 
 int ADV748X_HDMI_LW1 ; 
 int ADV748X_HDMI_LW1_WIDTH_MASK ; 
 int ADV748X_HDMI_VBACK_PORCH ; 
 int ADV748X_HDMI_VBACK_PORCH_MASK ; 
 int ADV748X_HDMI_VFRONT_PORCH ; 
 int ADV748X_HDMI_VFRONT_PORCH_MASK ; 
 int ADV748X_HDMI_VSYNC_WIDTH ; 
 int ADV748X_HDMI_VSYNC_WIDTH_MASK ; 
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENODATA ; 
 int ENOLINK ; 
 int /*<<< orphan*/  V4L2_DV_BT_656_1120 ; 
 int V4L2_DV_HSYNC_POS_POL ; 
 scalar_t__ V4L2_DV_INTERLACED ; 
 scalar_t__ V4L2_DV_PROGRESSIVE ; 
 int V4L2_DV_VSYNC_POS_POL ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_dv_timings*) ; 
 int /*<<< orphan*/  FUNC2 (struct adv748x_state*) ; 
 int FUNC3 (struct adv748x_state*) ; 
 struct adv748x_state* FUNC4 (struct adv748x_hdmi*) ; 
 struct adv748x_hdmi* FUNC5 (struct v4l2_subdev*) ; 
 int FUNC6 (struct adv748x_state*,int) ; 
 int FUNC7 (struct adv748x_state*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_dv_timings*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *sd,
					 struct v4l2_dv_timings *timings)
{
	struct adv748x_hdmi *hdmi = FUNC5(sd);
	struct adv748x_state *state = FUNC4(hdmi);
	struct v4l2_bt_timings *bt = &timings->bt;
	int pixelclock;
	int polarity;

	if (!timings)
		return -EINVAL;

	FUNC8(timings, 0, sizeof(struct v4l2_dv_timings));

	if (!FUNC2(state))
		return -ENOLINK;

	pixelclock = FUNC3(state);
	if (pixelclock < 0)
		return -ENODATA;

	timings->type = V4L2_DV_BT_656_1120;

	bt->pixelclock = pixelclock;
	bt->interlaced = FUNC6(state, ADV748X_HDMI_F1H1) &
				ADV748X_HDMI_F1H1_INTERLACED ?
				V4L2_DV_INTERLACED : V4L2_DV_PROGRESSIVE;
	bt->width = FUNC7(state, ADV748X_HDMI_LW1,
				ADV748X_HDMI_LW1_WIDTH_MASK);
	bt->height = FUNC7(state, ADV748X_HDMI_F0H1,
				 ADV748X_HDMI_F0H1_HEIGHT_MASK);
	bt->hfrontporch = FUNC7(state, ADV748X_HDMI_HFRONT_PORCH,
				      ADV748X_HDMI_HFRONT_PORCH_MASK);
	bt->hsync = FUNC7(state, ADV748X_HDMI_HSYNC_WIDTH,
				ADV748X_HDMI_HSYNC_WIDTH_MASK);
	bt->hbackporch = FUNC7(state, ADV748X_HDMI_HBACK_PORCH,
				     ADV748X_HDMI_HBACK_PORCH_MASK);
	bt->vfrontporch = FUNC7(state, ADV748X_HDMI_VFRONT_PORCH,
				      ADV748X_HDMI_VFRONT_PORCH_MASK) / 2;
	bt->vsync = FUNC7(state, ADV748X_HDMI_VSYNC_WIDTH,
				ADV748X_HDMI_VSYNC_WIDTH_MASK) / 2;
	bt->vbackporch = FUNC7(state, ADV748X_HDMI_VBACK_PORCH,
				     ADV748X_HDMI_VBACK_PORCH_MASK) / 2;

	polarity = FUNC6(state, 0x05);
	bt->polarities = (polarity & FUNC0(4) ? V4L2_DV_VSYNC_POS_POL : 0) |
		(polarity & FUNC0(5) ? V4L2_DV_HSYNC_POS_POL : 0);

	if (bt->interlaced == V4L2_DV_INTERLACED) {
		bt->height += FUNC7(state, 0x0b, 0x1fff);
		bt->il_vfrontporch = FUNC7(state, 0x2c, 0x3fff) / 2;
		bt->il_vsync = FUNC7(state, 0x30, 0x3fff) / 2;
		bt->il_vbackporch = FUNC7(state, 0x34, 0x3fff) / 2;
	}

	FUNC1(timings);

	/*
	 * No interrupt handling is implemented yet.
	 * There should be an IRQ when a cable is plugged and the new timings
	 * should be figured out and stored to state.
	 */
	hdmi->timings = *timings;

	return 0;
}