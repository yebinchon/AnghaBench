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
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov965x {int /*<<< orphan*/  lock; struct v4l2_mbus_framefmt format; } ;

/* Variables and functions */
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ov965x* FUNC2 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC3 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			  struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *fmt)
{
	struct ov965x *ov965x = FUNC2(sd);
	struct v4l2_mbus_framefmt *mf;

	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
		mf = FUNC3(sd, cfg, 0);
		fmt->format = *mf;
		return 0;
	}

	FUNC0(&ov965x->lock);
	fmt->format = ov965x->format;
	FUNC1(&ov965x->lock);

	return 0;
}