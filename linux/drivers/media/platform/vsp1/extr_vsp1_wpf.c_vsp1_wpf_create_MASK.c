#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int index; int /*<<< orphan*/  type; int /*<<< orphan*/ * ops; } ;
struct vsp1_rwpf {TYPE_2__ entity; int /*<<< orphan*/  ctrls; int /*<<< orphan*/  dlm; int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_width; } ;
struct vsp1_device {int /*<<< orphan*/  dev; TYPE_1__* info; } ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct vsp1_rwpf* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER ; 
 int /*<<< orphan*/  VSP1_ENTITY_WPF ; 
 int /*<<< orphan*/  WPF_GEN2_MAX_HEIGHT ; 
 int /*<<< orphan*/  WPF_GEN2_MAX_WIDTH ; 
 int /*<<< orphan*/  WPF_GEN3_MAX_HEIGHT ; 
 int /*<<< orphan*/  WPF_GEN3_MAX_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct vsp1_rwpf* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vsp1_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (struct vsp1_device*,TYPE_2__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpf_entity_ops ; 
 int FUNC8 (struct vsp1_rwpf*) ; 
 int /*<<< orphan*/  wpf_ops ; 

struct vsp1_rwpf *FUNC9(struct vsp1_device *vsp1, unsigned int index)
{
	struct vsp1_rwpf *wpf;
	char name[6];
	int ret;

	wpf = FUNC2(vsp1->dev, sizeof(*wpf), GFP_KERNEL);
	if (wpf == NULL)
		return FUNC0(-ENOMEM);

	if (vsp1->info->gen == 2) {
		wpf->max_width = WPF_GEN2_MAX_WIDTH;
		wpf->max_height = WPF_GEN2_MAX_HEIGHT;
	} else {
		wpf->max_width = WPF_GEN3_MAX_WIDTH;
		wpf->max_height = WPF_GEN3_MAX_HEIGHT;
	}

	wpf->entity.ops = &wpf_entity_ops;
	wpf->entity.type = VSP1_ENTITY_WPF;
	wpf->entity.index = index;

	FUNC3(name, "wpf.%u", index);
	ret = FUNC7(vsp1, &wpf->entity, name, 2, &wpf_ops,
			       MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER);
	if (ret < 0)
		return FUNC0(ret);

	/* Initialize the display list manager. */
	wpf->dlm = FUNC5(vsp1, index, 64);
	if (!wpf->dlm) {
		ret = -ENOMEM;
		goto error;
	}

	/* Initialize the control handler. */
	ret = FUNC8(wpf);
	if (ret < 0) {
		FUNC1(vsp1->dev, "wpf%u: failed to initialize controls\n",
			index);
		goto error;
	}

	FUNC4(&wpf->ctrls);

	return wpf;

error:
	FUNC6(&wpf->entity);
	return FUNC0(ret);
}