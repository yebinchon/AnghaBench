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
struct v4l2_subdev_format {int /*<<< orphan*/  which; struct v4l2_mbus_framefmt format; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct et8ek8_sensor {struct et8ek8_reglist* current_reglist; } ;
struct et8ek8_reglist {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct et8ek8_sensor*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct et8ek8_reglist* FUNC1 (int /*<<< orphan*/ *,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  FUNC2 (struct et8ek8_reglist*,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  FUNC3 (struct et8ek8_sensor*) ; 
 int /*<<< orphan*/  meta_reglist ; 
 struct et8ek8_sensor* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *subdev,
				 struct v4l2_subdev_pad_config *cfg,
				 struct v4l2_subdev_format *fmt)
{
	struct et8ek8_sensor *sensor = FUNC4(subdev);
	struct v4l2_mbus_framefmt *format;
	struct et8ek8_reglist *reglist;

	format = FUNC0(sensor, cfg, fmt->pad, fmt->which);
	if (!format)
		return -EINVAL;

	reglist = FUNC1(&meta_reglist, &fmt->format);
	FUNC2(reglist, &fmt->format);
	*format = fmt->format;

	if (fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
		sensor->current_reglist = reglist;
		FUNC3(sensor);
	}

	return 0;
}