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
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5640_dev {int /*<<< orphan*/  lock; struct v4l2_mbus_framefmt fmt; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ov5640_dev* FUNC2 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC3 (int /*<<< orphan*/ *,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			  struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *format)
{
	struct ov5640_dev *sensor = FUNC2(sd);
	struct v4l2_mbus_framefmt *fmt;

	if (format->pad != 0)
		return -EINVAL;

	FUNC0(&sensor->lock);

	if (format->which == V4L2_SUBDEV_FORMAT_TRY)
		fmt = FUNC3(&sensor->sd, cfg,
						 format->pad);
	else
		fmt = &sensor->fmt;

	format->format = *fmt;

	FUNC1(&sensor->lock);

	return 0;
}