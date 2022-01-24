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
struct v4l2_rect {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct v4l2_subdev_selection {scalar_t__ target; struct v4l2_rect r; int /*<<< orphan*/  which; int /*<<< orphan*/  reserved; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k6aa {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_SEL_TGT_CROP ; 
 struct v4l2_rect* FUNC0 (struct s5k6aa*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct s5k6aa* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd,
				struct v4l2_subdev_pad_config *cfg,
				struct v4l2_subdev_selection *sel)
{
	struct s5k6aa *s5k6aa = FUNC4(sd);
	struct v4l2_rect *rect;

	if (sel->target != V4L2_SEL_TGT_CROP)
		return -EINVAL;

	FUNC1(sel->reserved, 0, sizeof(sel->reserved));

	FUNC2(&s5k6aa->lock);
	rect = FUNC0(s5k6aa, cfg, sel->which);
	sel->r = *rect;
	FUNC3(&s5k6aa->lock);

	FUNC5(1, debug, sd, "Current crop rectangle: (%d,%d)/%dx%d\n",
		 rect->left, rect->top, rect->width, rect->height);

	return 0;
}