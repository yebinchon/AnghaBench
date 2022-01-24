#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_4__* ctrl_handler; } ;
struct TYPE_7__ {TYPE_1__ subdev; int /*<<< orphan*/  type; int /*<<< orphan*/ * ops; } ;
struct TYPE_8__ {int error; } ;
struct vsp1_sru {int intensity; TYPE_2__ entity; TYPE_4__ ctrls; } ;
struct vsp1_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct vsp1_sru* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEDIA_ENT_F_PROC_VIDEO_SCALER ; 
 int /*<<< orphan*/  VSP1_ENTITY_SRU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct vsp1_sru* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sru_entity_ops ; 
 int /*<<< orphan*/  sru_intensity_control ; 
 int /*<<< orphan*/  sru_ops ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (struct vsp1_device*,TYPE_2__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct vsp1_sru *FUNC7(struct vsp1_device *vsp1)
{
	struct vsp1_sru *sru;
	int ret;

	sru = FUNC2(vsp1->dev, sizeof(*sru), GFP_KERNEL);
	if (sru == NULL)
		return FUNC0(-ENOMEM);

	sru->entity.ops = &sru_entity_ops;
	sru->entity.type = VSP1_ENTITY_SRU;

	ret = FUNC6(vsp1, &sru->entity, "sru", 2, &sru_ops,
			       MEDIA_ENT_F_PROC_VIDEO_SCALER);
	if (ret < 0)
		return FUNC0(ret);

	/* Initialize the control handler. */
	FUNC3(&sru->ctrls, 1);
	FUNC4(&sru->ctrls, &sru_intensity_control, NULL);

	sru->intensity = 1;

	sru->entity.subdev.ctrl_handler = &sru->ctrls;

	if (sru->ctrls.error) {
		FUNC1(vsp1->dev, "sru: failed to initialize controls\n");
		ret = sru->ctrls.error;
		FUNC5(&sru->entity);
		return FUNC0(ret);
	}

	return sru;
}