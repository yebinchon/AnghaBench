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
struct v4l2_mbus_framefmt {scalar_t__ code; } ;
struct v4l2_subdev_format {scalar_t__ pad; scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5640_mode_info {int dummy; } ;
struct ov5640_dev {int pending_mode_change; int pending_fmt_change; int /*<<< orphan*/  lock; struct v4l2_mbus_framefmt fmt; struct ov5640_mode_info const* current_mode; int /*<<< orphan*/  current_fr; scalar_t__ streaming; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct v4l2_subdev*,struct v4l2_mbus_framefmt*,int /*<<< orphan*/ ,struct ov5640_mode_info const**) ; 
 struct ov5640_dev* FUNC3 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC4 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
			  struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *format)
{
	struct ov5640_dev *sensor = FUNC3(sd);
	const struct ov5640_mode_info *new_mode;
	struct v4l2_mbus_framefmt *mbus_fmt = &format->format;
	struct v4l2_mbus_framefmt *fmt;
	int ret;

	if (format->pad != 0)
		return -EINVAL;

	FUNC0(&sensor->lock);

	if (sensor->streaming) {
		ret = -EBUSY;
		goto out;
	}

	ret = FUNC2(sd, mbus_fmt,
				      sensor->current_fr, &new_mode);
	if (ret)
		goto out;

	if (format->which == V4L2_SUBDEV_FORMAT_TRY)
		fmt = FUNC4(sd, cfg, 0);
	else
		fmt = &sensor->fmt;

	*fmt = *mbus_fmt;

	if (new_mode != sensor->current_mode) {
		sensor->current_mode = new_mode;
		sensor->pending_mode_change = true;
	}
	if (mbus_fmt->code != sensor->fmt.code)
		sensor->pending_fmt_change = true;

out:
	FUNC1(&sensor->lock);
	return ret;
}