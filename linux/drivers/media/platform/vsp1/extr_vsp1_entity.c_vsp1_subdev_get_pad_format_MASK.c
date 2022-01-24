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
struct vsp1_entity {int /*<<< orphan*/  lock; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int /*<<< orphan*/  pad; int /*<<< orphan*/  format; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vsp1_entity* FUNC2 (struct v4l2_subdev*) ; 
 struct v4l2_subdev_pad_config* FUNC3 (struct vsp1_entity*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct vsp1_entity*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

int FUNC5(struct v4l2_subdev *subdev,
			       struct v4l2_subdev_pad_config *cfg,
			       struct v4l2_subdev_format *fmt)
{
	struct vsp1_entity *entity = FUNC2(subdev);
	struct v4l2_subdev_pad_config *config;

	config = FUNC3(entity, cfg, fmt->which);
	if (!config)
		return -EINVAL;

	FUNC0(&entity->lock);
	fmt->format = *FUNC4(entity, config, fmt->pad);
	FUNC1(&entity->lock);

	return 0;
}