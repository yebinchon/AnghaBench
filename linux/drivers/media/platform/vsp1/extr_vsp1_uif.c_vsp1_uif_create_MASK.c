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
struct vsp1_uif {int m3w_quirk; TYPE_1__ entity; } ;
struct vsp1_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct vsp1_uif* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEDIA_ENT_F_PROC_VIDEO_STATISTICS ; 
 int /*<<< orphan*/  VSP1_ENTITY_UIF ; 
 struct vsp1_uif* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  uif_entity_ops ; 
 int /*<<< orphan*/  uif_ops ; 
 int FUNC4 (struct vsp1_device*,TYPE_1__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vsp1_r8a7796 ; 

struct vsp1_uif *FUNC5(struct vsp1_device *vsp1, unsigned int index)
{
	struct vsp1_uif *uif;
	char name[6];
	int ret;

	uif = FUNC1(vsp1->dev, sizeof(*uif), GFP_KERNEL);
	if (!uif)
		return FUNC0(-ENOMEM);

	if (FUNC2(vsp1_r8a7796))
		uif->m3w_quirk = true;

	uif->entity.ops = &uif_entity_ops;
	uif->entity.type = VSP1_ENTITY_UIF;
	uif->entity.index = index;

	/* The datasheet names the two UIF instances UIF4 and UIF5. */
	FUNC3(name, "uif.%u", index + 4);
	ret = FUNC4(vsp1, &uif->entity, name, 2, &uif_ops,
			       MEDIA_ENT_F_PROC_VIDEO_STATISTICS);
	if (ret < 0)
		return FUNC0(ret);

	return uif;
}