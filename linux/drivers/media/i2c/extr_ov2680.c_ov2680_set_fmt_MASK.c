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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  code; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_format {scalar_t__ pad; scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov2680_mode_info {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct ov2680_dev {int mode_pending_changes; int /*<<< orphan*/  lock; struct v4l2_mbus_framefmt fmt; struct ov2680_mode_info const* current_mode; scalar_t__ is_streaming; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ov2680_mode_data ; 
 struct ov2680_dev* FUNC3 (struct v4l2_subdev*) ; 
 struct ov2680_mode_info* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v4l2_mbus_framefmt* FUNC5 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  width ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd,
			  struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *format)
{
	struct ov2680_dev *sensor = FUNC3(sd);
	struct v4l2_mbus_framefmt *fmt = &format->format;
#ifdef CONFIG_VIDEO_V4L2_SUBDEV_API
	struct v4l2_mbus_framefmt *try_fmt;
#endif
	const struct ov2680_mode_info *mode;
	int ret = 0;

	if (format->pad != 0)
		return -EINVAL;

	FUNC1(&sensor->lock);

	if (sensor->is_streaming) {
		ret = -EBUSY;
		goto unlock;
	}

	mode = FUNC4(ov2680_mode_data,
				      FUNC0(ov2680_mode_data), width,
				      height, fmt->width, fmt->height);
	if (!mode) {
		ret = -EINVAL;
		goto unlock;
	}

	if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
#ifdef CONFIG_VIDEO_V4L2_SUBDEV_API
		try_fmt = v4l2_subdev_get_try_format(sd, cfg, 0);
		format->format = *try_fmt;
#endif
		goto unlock;
	}

	fmt->width = mode->width;
	fmt->height = mode->height;
	fmt->code = sensor->fmt.code;
	fmt->colorspace = sensor->fmt.colorspace;

	sensor->current_mode = mode;
	sensor->fmt = format->format;
	sensor->mode_pending_changes = true;

unlock:
	FUNC2(&sensor->lock);

	return ret;
}