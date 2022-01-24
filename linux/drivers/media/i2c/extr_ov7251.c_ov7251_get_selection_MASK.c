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
struct v4l2_subdev_selection {scalar_t__ target; int /*<<< orphan*/  which; int /*<<< orphan*/  pad; int /*<<< orphan*/  r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct ov7251 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_SEL_TGT_CROP ; 
 int /*<<< orphan*/ * FUNC0 (struct ov7251*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ov7251* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
				struct v4l2_subdev_pad_config *cfg,
				struct v4l2_subdev_selection *sel)
{
	struct ov7251 *ov7251 = FUNC3(sd);

	if (sel->target != V4L2_SEL_TGT_CROP)
		return -EINVAL;

	FUNC1(&ov7251->lock);
	sel->r = *FUNC0(ov7251, cfg, sel->pad,
					sel->which);
	FUNC2(&ov7251->lock);

	return 0;
}