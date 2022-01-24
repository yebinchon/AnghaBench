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
struct v4l2_subdev_frame_interval_enum {size_t index; scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  interval; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {scalar_t__ width; scalar_t__ height; } ;
struct s5k6aa_interval {int /*<<< orphan*/  interval; TYPE_1__ size; } ;
struct s5k6aa {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t FUNC0 (struct s5k6aa_interval*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  S5K6AA_WIN_HEIGHT_MAX ; 
 int /*<<< orphan*/  S5K6AA_WIN_HEIGHT_MIN ; 
 int /*<<< orphan*/  S5K6AA_WIN_WIDTH_MAX ; 
 int /*<<< orphan*/  S5K6AA_WIN_WIDTH_MIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct s5k6aa_interval* s5k6aa_intervals ; 
 struct s5k6aa* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
			      struct v4l2_subdev_pad_config *cfg,
			      struct v4l2_subdev_frame_interval_enum *fie)
{
	struct s5k6aa *s5k6aa = FUNC3(sd);
	const struct s5k6aa_interval *fi;
	int ret = 0;

	if (fie->index >= FUNC0(s5k6aa_intervals))
		return -EINVAL;

	FUNC4(&fie->width, S5K6AA_WIN_WIDTH_MIN,
			      S5K6AA_WIN_WIDTH_MAX, 1,
			      &fie->height, S5K6AA_WIN_HEIGHT_MIN,
			      S5K6AA_WIN_HEIGHT_MAX, 1, 0);

	FUNC1(&s5k6aa->lock);
	fi = &s5k6aa_intervals[fie->index];
	if (fie->width > fi->size.width || fie->height > fi->size.height)
		ret = -EINVAL;
	else
		fie->interval = fi->interval;
	FUNC2(&s5k6aa->lock);

	return ret;
}