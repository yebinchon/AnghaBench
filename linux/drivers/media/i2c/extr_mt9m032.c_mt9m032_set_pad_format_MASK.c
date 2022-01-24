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
struct v4l2_subdev_format {int /*<<< orphan*/  which; int /*<<< orphan*/  format; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9m032 {int /*<<< orphan*/  lock; scalar_t__ streaming; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/ * FUNC0 (struct mt9m032*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mt9m032* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *subdev,
				  struct v4l2_subdev_pad_config *cfg,
				  struct v4l2_subdev_format *fmt)
{
	struct mt9m032 *sensor = FUNC3(subdev);
	int ret;

	FUNC1(&sensor->lock);

	if (sensor->streaming && fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
		ret = -EBUSY;
		goto done;
	}

	/* Scaling is not supported, the format is thus fixed. */
	fmt->format = *FUNC0(sensor, cfg, fmt->which);
	ret = 0;

done:
	FUNC2(&sensor->lock);
	return ret;
}