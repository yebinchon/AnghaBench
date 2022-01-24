#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  function; } ;
struct v4l2_subdev {TYPE_2__ entity; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; } ;
struct vsp1_entity {scalar_t__ type; scalar_t__ index; unsigned int source_pad; struct v4l2_subdev subdev; int /*<<< orphan*/ * config; TYPE_3__* pads; int /*<<< orphan*/ * sources; struct vsp1_device* vsp1; int /*<<< orphan*/  lock; TYPE_1__* route; } ;
struct vsp1_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  media_ops; } ;
struct v4l2_subdev_ops {int dummy; } ;
struct TYPE_8__ {void* flags; } ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ index; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* MEDIA_PAD_FL_SINK ; 
 void* MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,unsigned int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_subdev*,struct v4l2_subdev_ops const*) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 TYPE_1__* vsp1_routes ; 

int FUNC11(struct vsp1_device *vsp1, struct vsp1_entity *entity,
		     const char *name, unsigned int num_pads,
		     const struct v4l2_subdev_ops *ops, u32 function)
{
	struct v4l2_subdev *subdev;
	unsigned int i;
	int ret;

	for (i = 0; i < FUNC0(vsp1_routes); ++i) {
		if (vsp1_routes[i].type == entity->type &&
		    vsp1_routes[i].index == entity->index) {
			entity->route = &vsp1_routes[i];
			break;
		}
	}

	if (i == FUNC0(vsp1_routes))
		return -EINVAL;

	FUNC6(&entity->lock);

	entity->vsp1 = vsp1;
	entity->source_pad = num_pads - 1;

	/* Allocate and initialize pads. */
	entity->pads = FUNC2(vsp1->dev,
				    num_pads, sizeof(*entity->pads),
				    GFP_KERNEL);
	if (entity->pads == NULL)
		return -ENOMEM;

	for (i = 0; i < num_pads - 1; ++i)
		entity->pads[i].flags = MEDIA_PAD_FL_SINK;

	entity->sources = FUNC2(vsp1->dev, FUNC3(num_pads - 1, 1U),
				       sizeof(*entity->sources), GFP_KERNEL);
	if (entity->sources == NULL)
		return -ENOMEM;

	/* Single-pad entities only have a sink. */
	entity->pads[num_pads - 1].flags = num_pads > 1 ? MEDIA_PAD_FL_SOURCE
					 : MEDIA_PAD_FL_SINK;

	/* Initialize the media entity. */
	ret = FUNC5(&entity->subdev.entity, num_pads,
				     entity->pads);
	if (ret < 0)
		return ret;

	/* Initialize the V4L2 subdev. */
	subdev = &entity->subdev;
	FUNC9(subdev, ops);

	subdev->entity.function = function;
	subdev->entity.ops = &vsp1->media_ops;
	subdev->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	FUNC7(subdev->name, sizeof(subdev->name), "%s %s",
		 FUNC1(vsp1->dev), name);

	FUNC10(subdev, NULL);

	/*
	 * Allocate the pad configuration to store formats and selection
	 * rectangles.
	 */
	entity->config = FUNC8(&entity->subdev);
	if (entity->config == NULL) {
		FUNC4(&entity->subdev.entity);
		return -ENOMEM;
	}

	return 0;
}