#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct v4l2_subdev_format {int /*<<< orphan*/  which; int /*<<< orphan*/  pad; int /*<<< orphan*/  member_0; } ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {int flags; struct media_entity* entity; } ;
struct media_entity {int dummy; } ;
struct csiphy_lanes_cfg {int /*<<< orphan*/  num_data; } ;
struct TYPE_9__ {TYPE_3__* csi2; } ;
struct csiphy_device {TYPE_4__ cfg; int /*<<< orphan*/  id; } ;
struct TYPE_10__ {int /*<<< orphan*/  lane_assign; int /*<<< orphan*/  lane_cnt; int /*<<< orphan*/  csiphy_id; } ;
struct csid_device {int /*<<< orphan*/  subdev; TYPE_5__ phy; TYPE_2__* testgen_mode; } ;
struct TYPE_8__ {struct csiphy_lanes_cfg lane_cfg; } ;
struct TYPE_6__ {scalar_t__ val; } ;
struct TYPE_7__ {TYPE_1__ cur; } ;

/* Variables and functions */
 int EBUSY ; 
 int EPERM ; 
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MSM_CSID_PAD_SRC ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct csiphy_lanes_cfg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 
 scalar_t__ FUNC2 (struct media_pad const*) ; 
 struct v4l2_subdev* FUNC3 (struct media_entity*) ; 
 void* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct media_entity *entity,
			   const struct media_pad *local,
			   const struct media_pad *remote, u32 flags)
{
	if (flags & MEDIA_LNK_FL_ENABLED)
		if (FUNC2(local))
			return -EBUSY;

	if ((local->flags & MEDIA_PAD_FL_SINK) &&
	    (flags & MEDIA_LNK_FL_ENABLED)) {
		struct v4l2_subdev *sd;
		struct csid_device *csid;
		struct csiphy_device *csiphy;
		struct csiphy_lanes_cfg *lane_cfg;
		struct v4l2_subdev_format format = { 0 };

		sd = FUNC3(entity);
		csid = FUNC4(sd);

		/* If test generator is enabled */
		/* do not allow a link from CSIPHY to CSID */
		if (csid->testgen_mode->cur.val != 0)
			return -EBUSY;

		sd = FUNC3(remote->entity);
		csiphy = FUNC4(sd);

		/* If a sensor is not linked to CSIPHY */
		/* do no allow a link from CSIPHY to CSID */
		if (!csiphy->cfg.csi2)
			return -EPERM;

		csid->phy.csiphy_id = csiphy->id;

		lane_cfg = &csiphy->cfg.csi2->lane_cfg;
		csid->phy.lane_cnt = lane_cfg->num_data;
		csid->phy.lane_assign = FUNC0(lane_cfg);

		/* Reset format on source pad to sink pad format */
		format.pad = MSM_CSID_PAD_SRC;
		format.which = V4L2_SUBDEV_FORMAT_ACTIVE;
		FUNC1(&csid->subdev, NULL, &format);
	}

	return 0;
}