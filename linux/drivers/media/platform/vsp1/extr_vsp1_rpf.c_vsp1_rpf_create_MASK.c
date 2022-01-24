#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int index; int /*<<< orphan*/  type; int /*<<< orphan*/ * ops; } ;
struct vsp1_rwpf {TYPE_1__ entity; int /*<<< orphan*/  ctrls; int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_width; } ;
struct vsp1_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct vsp1_rwpf* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER ; 
 int /*<<< orphan*/  RPF_MAX_HEIGHT ; 
 int /*<<< orphan*/  RPF_MAX_WIDTH ; 
 int /*<<< orphan*/  VSP1_ENTITY_RPF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct vsp1_rwpf* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpf_entity_ops ; 
 int /*<<< orphan*/  rpf_ops ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct vsp1_device*,TYPE_1__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vsp1_rwpf*,int /*<<< orphan*/ ) ; 

struct vsp1_rwpf *FUNC8(struct vsp1_device *vsp1, unsigned int index)
{
	struct vsp1_rwpf *rpf;
	char name[6];
	int ret;

	rpf = FUNC2(vsp1->dev, sizeof(*rpf), GFP_KERNEL);
	if (rpf == NULL)
		return FUNC0(-ENOMEM);

	rpf->max_width = RPF_MAX_WIDTH;
	rpf->max_height = RPF_MAX_HEIGHT;

	rpf->entity.ops = &rpf_entity_ops;
	rpf->entity.type = VSP1_ENTITY_RPF;
	rpf->entity.index = index;

	FUNC3(name, "rpf.%u", index);
	ret = FUNC6(vsp1, &rpf->entity, name, 2, &rpf_ops,
			       MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER);
	if (ret < 0)
		return FUNC0(ret);

	/* Initialize the control handler. */
	ret = FUNC7(rpf, 0);
	if (ret < 0) {
		FUNC1(vsp1->dev, "rpf%u: failed to initialize controls\n",
			index);
		goto error;
	}

	FUNC4(&rpf->ctrls);

	return rpf;

error:
	FUNC5(&rpf->entity);
	return FUNC0(ret);
}