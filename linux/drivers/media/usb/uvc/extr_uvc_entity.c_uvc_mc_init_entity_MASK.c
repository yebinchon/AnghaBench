#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct uvc_video_chain {TYPE_1__* dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {TYPE_5__ entity; int /*<<< orphan*/  name; } ;
struct uvc_entity {int flags; TYPE_2__* vdev; int /*<<< orphan*/  pads; int /*<<< orphan*/  num_pads; TYPE_3__ subdev; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_5__ entity; } ;
struct TYPE_6__ {int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEDIA_ENT_FL_DEFAULT ; 
 int UVC_ENTITY_FLAG_DEFAULT ; 
 scalar_t__ FUNC0 (struct uvc_entity*) ; 
 scalar_t__ UVC_TT_STREAMING ; 
 int FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  uvc_subdev_ops ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct uvc_video_chain *chain,
			      struct uvc_entity *entity)
{
	int ret;

	if (FUNC0(entity) != UVC_TT_STREAMING) {
		FUNC4(&entity->subdev, &uvc_subdev_ops);
		FUNC2(entity->subdev.name, entity->name,
			sizeof(entity->subdev.name));

		ret = FUNC1(&entity->subdev.entity,
					entity->num_pads, entity->pads);

		if (ret < 0)
			return ret;

		ret = FUNC3(&chain->dev->vdev,
						  &entity->subdev);
	} else if (entity->vdev != NULL) {
		ret = FUNC1(&entity->vdev->entity,
					entity->num_pads, entity->pads);
		if (entity->flags & UVC_ENTITY_FLAG_DEFAULT)
			entity->vdev->entity.flags |= MEDIA_ENT_FL_DEFAULT;
	} else
		ret = 0;

	return ret;
}