#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ctrl_handler; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_5__ {TYPE_3__ entity; } ;
struct vsp1_hgt {int /*<<< orphan*/  ctrls; TYPE_2__ histo; } ;
struct vsp1_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct vsp1_hgt* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HGT_DATA_SIZE ; 
 int /*<<< orphan*/  V4L2_META_FMT_VSP1_HGT ; 
 int /*<<< orphan*/  VSP1_ENTITY_HGT ; 
 struct vsp1_hgt* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hgt_entity_ops ; 
 int /*<<< orphan*/  hgt_hue_areas ; 
 int /*<<< orphan*/  hgt_mbus_formats ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (struct vsp1_device*,TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct vsp1_hgt *FUNC8(struct vsp1_device *vsp1)
{
	struct vsp1_hgt *hgt;
	int ret;

	hgt = FUNC2(vsp1->dev, sizeof(*hgt), GFP_KERNEL);
	if (hgt == NULL)
		return FUNC1(-ENOMEM);

	/* Initialize the control handler. */
	FUNC3(&hgt->ctrls, 1);
	FUNC5(&hgt->ctrls, &hgt_hue_areas, NULL);

	hgt->histo.entity.subdev.ctrl_handler = &hgt->ctrls;

	/* Initialize the video device and queue for statistics data. */
	ret = FUNC7(vsp1, &hgt->histo, VSP1_ENTITY_HGT, "hgt",
				  &hgt_entity_ops, hgt_mbus_formats,
				  FUNC0(hgt_mbus_formats),
				  HGT_DATA_SIZE, V4L2_META_FMT_VSP1_HGT);
	if (ret < 0) {
		FUNC6(&hgt->histo.entity);
		return FUNC1(ret);
	}

	FUNC4(&hgt->ctrls);

	return hgt;
}