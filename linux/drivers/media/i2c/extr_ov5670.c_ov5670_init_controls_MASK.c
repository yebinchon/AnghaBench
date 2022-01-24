#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_handler {int error; int /*<<< orphan*/ * lock; } ;
struct TYPE_8__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct ov5670 {TYPE_3__ sd; void* exposure; TYPE_2__* cur_mode; TYPE_1__* hblank; void* vblank; void* pixel_rate; TYPE_4__* link_freq; int /*<<< orphan*/  mutex; struct v4l2_ctrl_handler ctrl_handler; } ;
typedef  scalar_t__ s64 ;
struct TYPE_10__ {scalar_t__ pixel_rate; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {scalar_t__ vts_def; scalar_t__ width; scalar_t__ height; scalar_t__ vts_min; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ ANALOG_GAIN_DEFAULT ; 
 scalar_t__ ANALOG_GAIN_MAX ; 
 scalar_t__ ANALOG_GAIN_MIN ; 
 int ANALOG_GAIN_STEP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ OV5670_DGTL_GAIN_DEFAULT ; 
 scalar_t__ OV5670_DGTL_GAIN_MAX ; 
 scalar_t__ OV5670_DGTL_GAIN_MIN ; 
 int OV5670_DGTL_GAIN_STEP ; 
 scalar_t__ OV5670_EXPOSURE_MIN ; 
 int OV5670_EXPOSURE_STEP ; 
 scalar_t__ OV5670_FIXED_PPL ; 
 scalar_t__ OV5670_VTS_MAX ; 
 int /*<<< orphan*/  V4L2_CID_ANALOGUE_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_DIGITAL_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_HBLANK ; 
 int /*<<< orphan*/  V4L2_CID_LINK_FREQ ; 
 int /*<<< orphan*/  V4L2_CID_PIXEL_RATE ; 
 int /*<<< orphan*/  V4L2_CID_TEST_PATTERN ; 
 int /*<<< orphan*/  V4L2_CID_VBLANK ; 
 int /*<<< orphan*/  V4L2_CTRL_FLAG_READ_ONLY ; 
 TYPE_5__* link_freq_configs ; 
 int /*<<< orphan*/  link_freq_menu_items ; 
 int /*<<< orphan*/  ov5670_ctrl_ops ; 
 int /*<<< orphan*/  ov5670_test_pattern_menu ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_ctrl_handler*) ; 
 int FUNC2 (struct v4l2_ctrl_handler*,int) ; 
 TYPE_4__* FUNC3 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ov5670 *ov5670)
{
	struct v4l2_ctrl_handler *ctrl_hdlr;
	s64 vblank_max;
	s64 vblank_def;
	s64 vblank_min;
	s64 exposure_max;
	int ret;

	ctrl_hdlr = &ov5670->ctrl_handler;
	ret = FUNC2(ctrl_hdlr, 8);
	if (ret)
		return ret;

	ctrl_hdlr->lock = &ov5670->mutex;
	ov5670->link_freq = FUNC3(ctrl_hdlr,
						   &ov5670_ctrl_ops,
						   V4L2_CID_LINK_FREQ,
						   0, 0, link_freq_menu_items);
	if (ov5670->link_freq)
		ov5670->link_freq->flags |= V4L2_CTRL_FLAG_READ_ONLY;

	/* By default, V4L2_CID_PIXEL_RATE is read only */
	ov5670->pixel_rate = FUNC4(ctrl_hdlr, &ov5670_ctrl_ops,
					       V4L2_CID_PIXEL_RATE, 0,
					       link_freq_configs[0].pixel_rate,
					       1,
					       link_freq_configs[0].pixel_rate);

	vblank_max = OV5670_VTS_MAX - ov5670->cur_mode->height;
	vblank_def = ov5670->cur_mode->vts_def - ov5670->cur_mode->height;
	vblank_min = ov5670->cur_mode->vts_min - ov5670->cur_mode->height;
	ov5670->vblank = FUNC4(ctrl_hdlr, &ov5670_ctrl_ops,
					   V4L2_CID_VBLANK, vblank_min,
					   vblank_max, 1, vblank_def);

	ov5670->hblank = FUNC4(
				ctrl_hdlr, &ov5670_ctrl_ops, V4L2_CID_HBLANK,
				OV5670_FIXED_PPL - ov5670->cur_mode->width,
				OV5670_FIXED_PPL - ov5670->cur_mode->width, 1,
				OV5670_FIXED_PPL - ov5670->cur_mode->width);
	if (ov5670->hblank)
		ov5670->hblank->flags |= V4L2_CTRL_FLAG_READ_ONLY;

	/* Get min, max, step, default from sensor */
	FUNC4(ctrl_hdlr, &ov5670_ctrl_ops, V4L2_CID_ANALOGUE_GAIN,
			  ANALOG_GAIN_MIN, ANALOG_GAIN_MAX, ANALOG_GAIN_STEP,
			  ANALOG_GAIN_DEFAULT);

	/* Digital gain */
	FUNC4(ctrl_hdlr, &ov5670_ctrl_ops, V4L2_CID_DIGITAL_GAIN,
			  OV5670_DGTL_GAIN_MIN, OV5670_DGTL_GAIN_MAX,
			  OV5670_DGTL_GAIN_STEP, OV5670_DGTL_GAIN_DEFAULT);

	/* Get min, max, step, default from sensor */
	exposure_max = ov5670->cur_mode->vts_def - 8;
	ov5670->exposure = FUNC4(ctrl_hdlr, &ov5670_ctrl_ops,
					     V4L2_CID_EXPOSURE,
					     OV5670_EXPOSURE_MIN,
					     exposure_max, OV5670_EXPOSURE_STEP,
					     exposure_max);

	FUNC5(ctrl_hdlr, &ov5670_ctrl_ops,
				     V4L2_CID_TEST_PATTERN,
				     FUNC0(ov5670_test_pattern_menu) - 1,
				     0, 0, ov5670_test_pattern_menu);

	if (ctrl_hdlr->error) {
		ret = ctrl_hdlr->error;
		goto error;
	}

	ov5670->sd.ctrl_handler = ctrl_hdlr;

	return 0;

error:
	FUNC1(ctrl_hdlr);

	return ret;
}