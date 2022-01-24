#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_handler {int error; } ;
struct TYPE_6__ {int /*<<< orphan*/  backlight; int /*<<< orphan*/  sharpness; int /*<<< orphan*/  whitebal; int /*<<< orphan*/  AC50Hz; int /*<<< orphan*/  flip; int /*<<< orphan*/  mirror; int /*<<< orphan*/  gamma; int /*<<< orphan*/  hue; int /*<<< orphan*/  saturation; int /*<<< orphan*/  contrast; int /*<<< orphan*/  brightness; } ;
struct TYPE_5__ {scalar_t__ backlight; scalar_t__ sharpness; scalar_t__ whitebal; scalar_t__ AC50Hz; scalar_t__ flip; scalar_t__ mirror; scalar_t__ gamma; scalar_t__ hue; scalar_t__ saturation; scalar_t__ contrast; scalar_t__ brightness; } ;
struct sd {TYPE_3__ vcur; TYPE_2__ vmax; } ;
struct TYPE_4__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_BACKLIGHT_COMPENSATION ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_GAMMA ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_HUE ; 
 int /*<<< orphan*/  V4L2_CID_POWER_LINE_FREQUENCY ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  V4L2_CID_SHARPNESS ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_CID_WHITE_BALANCE_TEMPERATURE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  sd_ctrl_ops ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

	gspca_dev->vdev.ctrl_handler = hdl;
	FUNC1(hdl, 11);

	if (sd->vmax.brightness)
		FUNC2(hdl, &sd_ctrl_ops, V4L2_CID_BRIGHTNESS,
				  0, sd->vmax.brightness, 1,
				  sd->vcur.brightness);

	if (sd->vmax.contrast)
		FUNC2(hdl, &sd_ctrl_ops, V4L2_CID_CONTRAST,
				  0, sd->vmax.contrast, 1,
				  sd->vcur.contrast);

	if (sd->vmax.saturation)
		FUNC2(hdl, &sd_ctrl_ops, V4L2_CID_SATURATION,
				  0, sd->vmax.saturation, 1,
				  sd->vcur.saturation);

	if (sd->vmax.hue)
		FUNC2(hdl, &sd_ctrl_ops, V4L2_CID_HUE,
				  0, sd->vmax.hue, 1, sd->vcur.hue);

	if (sd->vmax.gamma)
		FUNC2(hdl, &sd_ctrl_ops, V4L2_CID_GAMMA,
				  0, sd->vmax.gamma, 1, sd->vcur.gamma);

	if (sd->vmax.mirror)
		FUNC2(hdl, &sd_ctrl_ops, V4L2_CID_HFLIP,
				  0, sd->vmax.mirror, 1, sd->vcur.mirror);

	if (sd->vmax.flip)
		FUNC2(hdl, &sd_ctrl_ops, V4L2_CID_VFLIP,
				  0, sd->vmax.flip, 1, sd->vcur.flip);

	if (sd->vmax.AC50Hz)
		FUNC3(hdl, &sd_ctrl_ops,
				  V4L2_CID_POWER_LINE_FREQUENCY,
				  sd->vmax.AC50Hz, 0, sd->vcur.AC50Hz);

	if (sd->vmax.whitebal)
		FUNC2(hdl, &sd_ctrl_ops,
				  V4L2_CID_WHITE_BALANCE_TEMPERATURE,
				  0, sd->vmax.whitebal, 1, sd->vcur.whitebal);

	if (sd->vmax.sharpness)
		FUNC2(hdl, &sd_ctrl_ops, V4L2_CID_SHARPNESS,
				  0, sd->vmax.sharpness, 1,
				  sd->vcur.sharpness);

	if (sd->vmax.backlight)
		FUNC2(hdl, &sd_ctrl_ops,
				  V4L2_CID_BACKLIGHT_COMPENSATION,
				  0, sd->vmax.backlight, 1,
				  sd->vcur.backlight);

	if (hdl->error) {
		FUNC0("Could not initialize controls\n");
		return hdl->error;
	}

	return 0;
}