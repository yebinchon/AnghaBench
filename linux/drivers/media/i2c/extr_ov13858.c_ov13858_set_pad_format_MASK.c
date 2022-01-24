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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov13858_mode {size_t link_freq_index; size_t vts_def; size_t height; size_t vts_min; size_t width; } ;
struct ov13858 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  hblank; struct ov13858_mode const* cur_mode; int /*<<< orphan*/  vblank; int /*<<< orphan*/  pixel_rate; int /*<<< orphan*/  link_freq; } ;
typedef  size_t s64 ;
typedef  size_t s32 ;
struct TYPE_2__ {size_t pixels_per_line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEDIA_BUS_FMT_SGRBG10_1X10 ; 
 size_t OV13858_VTS_MAX ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,size_t,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  height ; 
 TYPE_1__* link_freq_configs ; 
 size_t* link_freq_menu_items ; 
 size_t FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ov13858_mode const*,struct v4l2_subdev_format*) ; 
 int /*<<< orphan*/  supported_modes ; 
 struct ov13858* FUNC8 (struct v4l2_subdev*) ; 
 struct ov13858_mode* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v4l2_mbus_framefmt* FUNC10 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  width ; 

__attribute__((used)) static int
FUNC11(struct v4l2_subdev *sd,
		       struct v4l2_subdev_pad_config *cfg,
		       struct v4l2_subdev_format *fmt)
{
	struct ov13858 *ov13858 = FUNC8(sd);
	const struct ov13858_mode *mode;
	struct v4l2_mbus_framefmt *framefmt;
	s32 vblank_def;
	s32 vblank_min;
	s64 h_blank;
	s64 pixel_rate;
	s64 link_freq;

	FUNC5(&ov13858->mutex);

	/* Only one raw bayer(GRBG) order is supported */
	if (fmt->format.code != MEDIA_BUS_FMT_SGRBG10_1X10)
		fmt->format.code = MEDIA_BUS_FMT_SGRBG10_1X10;

	mode = FUNC9(supported_modes,
				      FUNC0(supported_modes),
				      width, height,
				      fmt->format.width, fmt->format.height);
	FUNC7(mode, fmt);
	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
		framefmt = FUNC10(sd, cfg, fmt->pad);
		*framefmt = fmt->format;
	} else {
		ov13858->cur_mode = mode;
		FUNC2(ov13858->link_freq, mode->link_freq_index);
		link_freq = link_freq_menu_items[mode->link_freq_index];
		pixel_rate = FUNC4(link_freq);
		FUNC3(ov13858->pixel_rate, pixel_rate);

		/* Update limits and set FPS to default */
		vblank_def = ov13858->cur_mode->vts_def -
			     ov13858->cur_mode->height;
		vblank_min = ov13858->cur_mode->vts_min -
			     ov13858->cur_mode->height;
		FUNC1(
			ov13858->vblank, vblank_min,
			OV13858_VTS_MAX - ov13858->cur_mode->height, 1,
			vblank_def);
		FUNC2(ov13858->vblank, vblank_def);
		h_blank =
			link_freq_configs[mode->link_freq_index].pixels_per_line
			 - ov13858->cur_mode->width;
		FUNC1(ov13858->hblank, h_blank,
					 h_blank, 1, h_blank);
	}

	FUNC6(&ov13858->mutex);

	return 0;
}