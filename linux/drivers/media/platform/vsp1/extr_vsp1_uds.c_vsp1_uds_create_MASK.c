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
struct TYPE_2__ {unsigned int index; int /*<<< orphan*/  type; int /*<<< orphan*/ * ops; } ;
struct vsp1_uds {TYPE_1__ entity; } ;
struct vsp1_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct vsp1_uds* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEDIA_ENT_F_PROC_VIDEO_SCALER ; 
 int /*<<< orphan*/  VSP1_ENTITY_UDS ; 
 struct vsp1_uds* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  uds_entity_ops ; 
 int /*<<< orphan*/  uds_ops ; 
 int FUNC3 (struct vsp1_device*,TYPE_1__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct vsp1_uds *FUNC4(struct vsp1_device *vsp1, unsigned int index)
{
	struct vsp1_uds *uds;
	char name[6];
	int ret;

	uds = FUNC1(vsp1->dev, sizeof(*uds), GFP_KERNEL);
	if (uds == NULL)
		return FUNC0(-ENOMEM);

	uds->entity.ops = &uds_entity_ops;
	uds->entity.type = VSP1_ENTITY_UDS;
	uds->entity.index = index;

	FUNC2(name, "uds.%u", index);
	ret = FUNC3(vsp1, &uds->entity, name, 2, &uds_ops,
			       MEDIA_ENT_F_PROC_VIDEO_SCALER);
	if (ret < 0)
		return FUNC0(ret);

	return uds;
}