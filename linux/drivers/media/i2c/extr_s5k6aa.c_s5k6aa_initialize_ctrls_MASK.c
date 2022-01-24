#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int error; } ;
struct s5k6aa_ctrls {void* auto_exp; void* gain; void* exposure; void* hflip; void* vflip; void* awb; void* gain_blue; void* gain_green; void* gain_red; struct v4l2_ctrl_handler handler; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct s5k6aa {TYPE_1__ sd; struct s5k6aa_ctrls ctrls; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_AUTO_WHITE_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_COLORFX ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_POWER_LINE_FREQUENCY ; 
 int /*<<< orphan*/  V4L2_CID_POWER_LINE_FREQUENCY_AUTO ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  V4L2_CID_SHARPNESS ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_CID_WHITE_BALANCE_TEMPERATURE ; 
 int /*<<< orphan*/  V4L2_COLORFX_NONE ; 
 int /*<<< orphan*/  V4L2_COLORFX_SKY_BLUE ; 
 int /*<<< orphan*/  V4L2_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_EXPOSURE_MANUAL ; 
 struct v4l2_ctrl_ops s5k6aa_ctrl_ops ; 
 int /*<<< orphan*/ * s5k6aa_ctrls ; 
 int /*<<< orphan*/  FUNC0 (int,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,void**) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*) ; 
 int FUNC3 (struct v4l2_ctrl_handler*,int) ; 
 void* FUNC4 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int /*<<< orphan*/ ,int,int,int,int) ; 
 void* FUNC6 (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct s5k6aa *s5k6aa)
{
	const struct v4l2_ctrl_ops *ops = &s5k6aa_ctrl_ops;
	struct s5k6aa_ctrls *ctrls = &s5k6aa->ctrls;
	struct v4l2_ctrl_handler *hdl = &ctrls->handler;

	int ret = FUNC3(hdl, 16);
	if (ret)
		return ret;
	/* Auto white balance cluster */
	ctrls->awb = FUNC5(hdl, ops, V4L2_CID_AUTO_WHITE_BALANCE,
				       0, 1, 1, 1);
	ctrls->gain_red = FUNC4(hdl, &s5k6aa_ctrls[0], NULL);
	ctrls->gain_green = FUNC4(hdl, &s5k6aa_ctrls[1], NULL);
	ctrls->gain_blue = FUNC4(hdl, &s5k6aa_ctrls[2], NULL);
	FUNC0(4, &ctrls->awb, 0, false);

	ctrls->hflip = FUNC5(hdl, ops, V4L2_CID_HFLIP, 0, 1, 1, 0);
	ctrls->vflip = FUNC5(hdl, ops, V4L2_CID_VFLIP, 0, 1, 1, 0);
	FUNC1(2, &ctrls->hflip);

	ctrls->auto_exp = FUNC6(hdl, ops,
				V4L2_CID_EXPOSURE_AUTO,
				V4L2_EXPOSURE_MANUAL, 0, V4L2_EXPOSURE_AUTO);
	/* Exposure time: x 1 us */
	ctrls->exposure = FUNC5(hdl, ops, V4L2_CID_EXPOSURE,
					    0, 6000000U, 1, 100000U);
	/* Total gain: 256 <=> 1x */
	ctrls->gain = FUNC5(hdl, ops, V4L2_CID_GAIN,
					0, 256, 1, 256);
	FUNC0(3, &ctrls->auto_exp, 0, false);

	FUNC6(hdl, ops, V4L2_CID_POWER_LINE_FREQUENCY,
			       V4L2_CID_POWER_LINE_FREQUENCY_AUTO, 0,
			       V4L2_CID_POWER_LINE_FREQUENCY_AUTO);

	FUNC6(hdl, ops, V4L2_CID_COLORFX,
			       V4L2_COLORFX_SKY_BLUE, ~0x6f, V4L2_COLORFX_NONE);

	FUNC5(hdl, ops, V4L2_CID_WHITE_BALANCE_TEMPERATURE,
			  0, 256, 1, 0);

	FUNC5(hdl, ops, V4L2_CID_SATURATION, -127, 127, 1, 0);
	FUNC5(hdl, ops, V4L2_CID_BRIGHTNESS, -127, 127, 1, 0);
	FUNC5(hdl, ops, V4L2_CID_CONTRAST, -127, 127, 1, 0);
	FUNC5(hdl, ops, V4L2_CID_SHARPNESS, -127, 127, 1, 0);

	if (hdl->error) {
		ret = hdl->error;
		FUNC2(hdl);
		return ret;
	}

	s5k6aa->sd.ctrl_handler = hdl;
	return 0;
}