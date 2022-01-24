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
struct v4l2_subdev_selection {scalar_t__ target; int /*<<< orphan*/  which; int /*<<< orphan*/  r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9m032 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_SEL_TGT_CROP ; 
 int /*<<< orphan*/ * FUNC0 (struct mt9m032*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mt9m032* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *subdev,
				     struct v4l2_subdev_pad_config *cfg,
				     struct v4l2_subdev_selection *sel)
{
	struct mt9m032 *sensor = FUNC3(subdev);

	if (sel->target != V4L2_SEL_TGT_CROP)
		return -EINVAL;

	FUNC1(&sensor->lock);
	sel->r = *FUNC0(sensor, cfg, sel->which);
	FUNC2(&sensor->lock);

	return 0;
}