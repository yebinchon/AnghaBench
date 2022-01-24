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
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; int /*<<< orphan*/  reserved; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k6aa {int /*<<< orphan*/  lock; TYPE_1__* preset; } ;
struct TYPE_2__ {struct v4l2_mbus_framefmt mbus_fmt; } ;

/* Variables and functions */
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct s5k6aa* FUNC3 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC4 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *fmt)
{
	struct s5k6aa *s5k6aa = FUNC3(sd);
	struct v4l2_mbus_framefmt *mf;

	FUNC0(fmt->reserved, 0, sizeof(fmt->reserved));

	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
		mf = FUNC4(sd, cfg, 0);
		fmt->format = *mf;
		return 0;
	}

	FUNC1(&s5k6aa->lock);
	fmt->format = s5k6aa->preset->mbus_fmt;
	FUNC2(&s5k6aa->lock);

	return 0;
}