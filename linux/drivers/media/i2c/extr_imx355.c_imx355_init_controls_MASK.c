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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct v4l2_ctrl_handler {int error; int /*<<< orphan*/ * lock; } ;
struct imx355_mode {int fll_def; int height; int fll_min; int llp; int width; } ;
struct TYPE_5__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct imx355 {int link_def_freq; TYPE_2__ sd; void* vflip; void* hflip; void* exposure; TYPE_1__* hblank; void* vblank; struct imx355_mode* cur_mode; void* pixel_rate; TYPE_3__* link_freq; int /*<<< orphan*/  mutex; struct v4l2_ctrl_handler ctrl_handler; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int s64 ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int IMX355_ANA_GAIN_DEFAULT ; 
 int IMX355_ANA_GAIN_MAX ; 
 int IMX355_ANA_GAIN_MIN ; 
 int IMX355_ANA_GAIN_STEP ; 
 int IMX355_DGTL_GAIN_DEFAULT ; 
 int IMX355_DGTL_GAIN_MAX ; 
 int IMX355_DGTL_GAIN_MIN ; 
 int IMX355_DGTL_GAIN_STEP ; 
 int IMX355_EXPOSURE_DEFAULT ; 
 int IMX355_EXPOSURE_MIN ; 
 int IMX355_EXPOSURE_STEP ; 
 int IMX355_FLL_MAX ; 
 int /*<<< orphan*/  V4L2_CID_ANALOGUE_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_DIGITAL_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_HBLANK ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_LINK_FREQ ; 
 int /*<<< orphan*/  V4L2_CID_PIXEL_RATE ; 
 int /*<<< orphan*/  V4L2_CID_TEST_PATTERN ; 
 int /*<<< orphan*/  V4L2_CID_VBLANK ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_CTRL_FLAG_READ_ONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  imx355_ctrl_ops ; 
 int /*<<< orphan*/  imx355_test_pattern_menu ; 
 int /*<<< orphan*/  link_freq_menu_items ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl_handler*) ; 
 int FUNC4 (struct v4l2_ctrl_handler*,int) ; 
 TYPE_3__* FUNC5 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(struct imx355 *imx355)
{
	struct i2c_client *client = FUNC8(&imx355->sd);
	struct v4l2_ctrl_handler *ctrl_hdlr;
	s64 exposure_max;
	s64 vblank_def;
	s64 vblank_min;
	s64 hblank;
	u64 pixel_rate;
	const struct imx355_mode *mode;
	u32 max;
	int ret;

	ctrl_hdlr = &imx355->ctrl_handler;
	ret = FUNC4(ctrl_hdlr, 10);
	if (ret)
		return ret;

	ctrl_hdlr->lock = &imx355->mutex;
	max = FUNC0(link_freq_menu_items) - 1;
	imx355->link_freq = FUNC5(ctrl_hdlr, &imx355_ctrl_ops,
						   V4L2_CID_LINK_FREQ, max, 0,
						   link_freq_menu_items);
	if (imx355->link_freq)
		imx355->link_freq->flags |= V4L2_CTRL_FLAG_READ_ONLY;

	/* pixel_rate = link_freq * 2 * nr_of_lanes / bits_per_sample */
	pixel_rate = imx355->link_def_freq * 2 * 4;
	FUNC2(pixel_rate, 10);
	/* By default, PIXEL_RATE is read only */
	imx355->pixel_rate = FUNC6(ctrl_hdlr, &imx355_ctrl_ops,
					       V4L2_CID_PIXEL_RATE, pixel_rate,
					       pixel_rate, 1, pixel_rate);

	/* Initialize vblank/hblank/exposure parameters based on current mode */
	mode = imx355->cur_mode;
	vblank_def = mode->fll_def - mode->height;
	vblank_min = mode->fll_min - mode->height;
	imx355->vblank = FUNC6(ctrl_hdlr, &imx355_ctrl_ops,
					   V4L2_CID_VBLANK, vblank_min,
					   IMX355_FLL_MAX - mode->height,
					   1, vblank_def);

	hblank = mode->llp - mode->width;
	imx355->hblank = FUNC6(ctrl_hdlr, &imx355_ctrl_ops,
					   V4L2_CID_HBLANK, hblank, hblank,
					   1, hblank);
	if (imx355->hblank)
		imx355->hblank->flags |= V4L2_CTRL_FLAG_READ_ONLY;

	/* fll >= exposure time + adjust parameter (default value is 10) */
	exposure_max = mode->fll_def - 10;
	imx355->exposure = FUNC6(ctrl_hdlr, &imx355_ctrl_ops,
					     V4L2_CID_EXPOSURE,
					     IMX355_EXPOSURE_MIN, exposure_max,
					     IMX355_EXPOSURE_STEP,
					     IMX355_EXPOSURE_DEFAULT);

	imx355->hflip = FUNC6(ctrl_hdlr, &imx355_ctrl_ops,
					  V4L2_CID_HFLIP, 0, 1, 1, 0);
	imx355->vflip = FUNC6(ctrl_hdlr, &imx355_ctrl_ops,
					  V4L2_CID_VFLIP, 0, 1, 1, 0);

	FUNC6(ctrl_hdlr, &imx355_ctrl_ops, V4L2_CID_ANALOGUE_GAIN,
			  IMX355_ANA_GAIN_MIN, IMX355_ANA_GAIN_MAX,
			  IMX355_ANA_GAIN_STEP, IMX355_ANA_GAIN_DEFAULT);

	/* Digital gain */
	FUNC6(ctrl_hdlr, &imx355_ctrl_ops, V4L2_CID_DIGITAL_GAIN,
			  IMX355_DGTL_GAIN_MIN, IMX355_DGTL_GAIN_MAX,
			  IMX355_DGTL_GAIN_STEP, IMX355_DGTL_GAIN_DEFAULT);

	FUNC7(ctrl_hdlr, &imx355_ctrl_ops,
				     V4L2_CID_TEST_PATTERN,
				     FUNC0(imx355_test_pattern_menu) - 1,
				     0, 0, imx355_test_pattern_menu);
	if (ctrl_hdlr->error) {
		ret = ctrl_hdlr->error;
		FUNC1(&client->dev, "control init failed: %d", ret);
		goto error;
	}

	imx355->sd.ctrl_handler = ctrl_hdlr;

	return 0;

error:
	FUNC3(ctrl_hdlr);

	return ret;
}