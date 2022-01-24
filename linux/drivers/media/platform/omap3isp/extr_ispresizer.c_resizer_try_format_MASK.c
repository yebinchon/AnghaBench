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
struct v4l2_rect {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  code; void* height; void* width; } ;
struct resizer_ratio {int dummy; } ;
struct isp_res_device {int dummy; } ;
typedef  enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_IN_HEIGHT ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_UYVY8_1X16 ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_YUYV8_1X16 ; 
 int /*<<< orphan*/  MIN_IN_HEIGHT ; 
 int /*<<< orphan*/  MIN_IN_WIDTH ; 
#define  RESZ_PAD_SINK 129 
#define  RESZ_PAD_SOURCE 128 
 int /*<<< orphan*/  V4L2_COLORSPACE_JPEG ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 struct v4l2_rect* FUNC0 (struct isp_res_device*,struct v4l2_subdev_pad_config*,int) ; 
 struct v4l2_mbus_framefmt* FUNC1 (struct isp_res_device*,struct v4l2_subdev_pad_config*,int const,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_res_device*,struct v4l2_rect*,struct v4l2_mbus_framefmt*,struct resizer_ratio*) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_res_device*) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static void FUNC5(struct isp_res_device *res,
			       struct v4l2_subdev_pad_config *cfg, unsigned int pad,
			       struct v4l2_mbus_framefmt *fmt,
			       enum v4l2_subdev_format_whence which)
{
	struct v4l2_mbus_framefmt *format;
	struct resizer_ratio ratio;
	struct v4l2_rect crop;

	switch (pad) {
	case RESZ_PAD_SINK:
		if (fmt->code != MEDIA_BUS_FMT_YUYV8_1X16 &&
		    fmt->code != MEDIA_BUS_FMT_UYVY8_1X16)
			fmt->code = MEDIA_BUS_FMT_YUYV8_1X16;

		fmt->width = FUNC2(u32, fmt->width, MIN_IN_WIDTH,
				     FUNC4(res));
		fmt->height = FUNC2(u32, fmt->height, MIN_IN_HEIGHT,
				      MAX_IN_HEIGHT);
		break;

	case RESZ_PAD_SOURCE:
		format = FUNC1(res, cfg, RESZ_PAD_SINK, which);
		fmt->code = format->code;

		crop = *FUNC0(res, cfg, which);
		FUNC3(res, &crop, fmt, &ratio);
		break;
	}

	fmt->colorspace = V4L2_COLORSPACE_JPEG;
	fmt->field = V4L2_FIELD_NONE;
}