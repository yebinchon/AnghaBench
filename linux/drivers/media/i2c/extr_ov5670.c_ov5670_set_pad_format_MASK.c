#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  code; } ;
struct v4l2_subdev_format {scalar_t__ which; TYPE_1__ format; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5670_mode {size_t link_freq_index; size_t vts_def; size_t height; size_t vts_min; size_t width; } ;
struct ov5670 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  hblank; struct ov5670_mode const* cur_mode; int /*<<< orphan*/  vblank; int /*<<< orphan*/  pixel_rate; int /*<<< orphan*/  link_freq; } ;
typedef  size_t s32 ;
struct TYPE_4__ {int /*<<< orphan*/  pixel_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_SGRBG10_1X10 ; 
 size_t OV5670_FIXED_PPL ; 
 size_t OV5670_VTS_MAX ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,size_t,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  height ; 
 TYPE_2__* link_freq_configs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ov5670_mode const*,struct v4l2_subdev_format*) ; 
 int /*<<< orphan*/  supported_modes ; 
 struct ov5670* FUNC7 (struct v4l2_subdev*) ; 
 struct ov5670_mode* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  width ; 

__attribute__((used)) static int FUNC10(struct v4l2_subdev *sd,
				 struct v4l2_subdev_pad_config *cfg,
				 struct v4l2_subdev_format *fmt)
{
	struct ov5670 *ov5670 = FUNC7(sd);
	const struct ov5670_mode *mode;
	s32 vblank_def;
	s32 h_blank;

	FUNC4(&ov5670->mutex);

	fmt->format.code = MEDIA_BUS_FMT_SGRBG10_1X10;

	mode = FUNC8(supported_modes,
				      FUNC0(supported_modes),
				      width, height,
				      fmt->format.width, fmt->format.height);
	FUNC6(mode, fmt);
	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
		*FUNC9(sd, cfg, fmt->pad) = fmt->format;
	} else {
		ov5670->cur_mode = mode;
		FUNC2(ov5670->link_freq, mode->link_freq_index);
		FUNC3(
			ov5670->pixel_rate,
			link_freq_configs[mode->link_freq_index].pixel_rate);
		/* Update limits and set FPS to default */
		vblank_def = ov5670->cur_mode->vts_def -
			     ov5670->cur_mode->height;
		FUNC1(
			ov5670->vblank,
			ov5670->cur_mode->vts_min - ov5670->cur_mode->height,
			OV5670_VTS_MAX - ov5670->cur_mode->height, 1,
			vblank_def);
		FUNC2(ov5670->vblank, vblank_def);
		h_blank = OV5670_FIXED_PPL - ov5670->cur_mode->width;
		FUNC1(ov5670->hblank, h_blank, h_blank, 1,
					 h_blank);
	}

	FUNC5(&ov5670->mutex);

	return 0;
}