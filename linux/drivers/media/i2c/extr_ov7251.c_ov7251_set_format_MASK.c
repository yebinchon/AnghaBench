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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  quantization; int /*<<< orphan*/  field; int /*<<< orphan*/  code; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int /*<<< orphan*/  which; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct ov7251_mode_info {int link_freq; int exposure_def; int /*<<< orphan*/  exposure_max; int /*<<< orphan*/  pixel_clock; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct ov7251 {int /*<<< orphan*/  lock; struct ov7251_mode_info const* current_mode; int /*<<< orphan*/  gain; int /*<<< orphan*/  exposure; int /*<<< orphan*/  link_freq; int /*<<< orphan*/  pixel_clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_Y10_1X10 ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SRGB ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 struct v4l2_rect* FUNC4 (struct ov7251*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v4l2_mbus_framefmt* FUNC5 (struct ov7251*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ov7251_mode_info_data ; 
 struct ov7251* FUNC11 (struct v4l2_subdev*) ; 
 struct ov7251_mode_info* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  width ; 

__attribute__((used)) static int FUNC13(struct v4l2_subdev *sd,
			     struct v4l2_subdev_pad_config *cfg,
			     struct v4l2_subdev_format *format)
{
	struct ov7251 *ov7251 = FUNC11(sd);
	struct v4l2_mbus_framefmt *__format;
	struct v4l2_rect *__crop;
	const struct ov7251_mode_info *new_mode;
	int ret = 0;

	FUNC9(&ov7251->lock);

	__crop = FUNC4(ov7251, cfg, format->pad, format->which);

	new_mode = FUNC12(ov7251_mode_info_data,
				FUNC0(ov7251_mode_info_data),
				width, height,
				format->format.width, format->format.height);

	__crop->width = new_mode->width;
	__crop->height = new_mode->height;

	if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
		ret = FUNC8(ov7251->pixel_clock,
					       new_mode->pixel_clock);
		if (ret < 0)
			goto exit;

		ret = FUNC7(ov7251->link_freq,
					 new_mode->link_freq);
		if (ret < 0)
			goto exit;

		ret = FUNC6(ov7251->exposure,
					       1, new_mode->exposure_max,
					       1, new_mode->exposure_def);
		if (ret < 0)
			goto exit;

		ret = FUNC7(ov7251->exposure,
					 new_mode->exposure_def);
		if (ret < 0)
			goto exit;

		ret = FUNC7(ov7251->gain, 16);
		if (ret < 0)
			goto exit;

		ov7251->current_mode = new_mode;
	}

	__format = FUNC5(ov7251, cfg, format->pad,
					   format->which);
	__format->width = __crop->width;
	__format->height = __crop->height;
	__format->code = MEDIA_BUS_FMT_Y10_1X10;
	__format->field = V4L2_FIELD_NONE;
	__format->colorspace = V4L2_COLORSPACE_SRGB;
	__format->ycbcr_enc = FUNC3(__format->colorspace);
	__format->quantization = FUNC1(true,
				__format->colorspace, __format->ycbcr_enc);
	__format->xfer_func = FUNC2(__format->colorspace);

	format->format = *__format;

exit:
	FUNC10(&ov7251->lock);

	return ret;
}