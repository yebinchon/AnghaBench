#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int error; } ;
struct TYPE_7__ {TYPE_4__* ctrl_handler; } ;
struct TYPE_8__ {TYPE_1__ subdev; int /*<<< orphan*/  type; int /*<<< orphan*/ * ops; } ;
struct vsp1_lut {TYPE_4__ ctrls; TYPE_2__ entity; int /*<<< orphan*/  pool; int /*<<< orphan*/  lock; } ;
struct vsp1_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct vsp1_lut* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LUT_SIZE ; 
 int /*<<< orphan*/  MEDIA_ENT_F_PROC_VIDEO_LUT ; 
 int /*<<< orphan*/  VSP1_ENTITY_LUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct vsp1_lut* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lut_entity_ops ; 
 int /*<<< orphan*/  lut_ops ; 
 int /*<<< orphan*/  lut_table_control ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vsp1_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (struct vsp1_device*,TYPE_2__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct vsp1_lut *FUNC10(struct vsp1_device *vsp1)
{
	struct vsp1_lut *lut;
	int ret;

	lut = FUNC2(vsp1->dev, sizeof(*lut), GFP_KERNEL);
	if (lut == NULL)
		return FUNC0(-ENOMEM);

	FUNC3(&lut->lock);

	lut->entity.ops = &lut_entity_ops;
	lut->entity.type = VSP1_ENTITY_LUT;

	ret = FUNC9(vsp1, &lut->entity, "lut", 2, &lut_ops,
			       MEDIA_ENT_F_PROC_VIDEO_LUT);
	if (ret < 0)
		return FUNC0(ret);

	/*
	 * Pre-allocate a body pool, with 3 bodies allowing a userspace update
	 * before the hardware has committed a previous set of tables, handling
	 * both the queued and pending dl entries.
	 */
	lut->pool = FUNC7(vsp1, 3, LUT_SIZE, 0);
	if (!lut->pool)
		return FUNC0(-ENOMEM);

	/* Initialize the control handler. */
	FUNC4(&lut->ctrls, 1);
	FUNC6(&lut->ctrls, &lut_table_control, NULL);

	lut->entity.subdev.ctrl_handler = &lut->ctrls;

	if (lut->ctrls.error) {
		FUNC1(vsp1->dev, "lut: failed to initialize controls\n");
		ret = lut->ctrls.error;
		FUNC8(&lut->entity);
		return FUNC0(ret);
	}

	FUNC5(&lut->ctrls);

	return lut;
}