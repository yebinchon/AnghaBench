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
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int /*<<< orphan*/  name; int /*<<< orphan*/  grp_id; TYPE_3__* dev; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct TYPE_8__ {scalar_t__ fimc_bus_type; } ;
struct TYPE_5__ {scalar_t__ fwnode; } ;
struct TYPE_6__ {TYPE_1__ match; } ;
struct fimc_sensor_info {struct v4l2_subdev* subdev; TYPE_4__ pdata; TYPE_2__ asd; } ;
struct fimc_md {int /*<<< orphan*/  num_sensors; int /*<<< orphan*/  v4l2_dev; struct fimc_sensor_info* sensor; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (struct fimc_sensor_info*) ; 
 int EINVAL ; 
 scalar_t__ FIMC_BUS_TYPE_ISP_WRITEBACK ; 
 int /*<<< orphan*/  GRP_ID_FIMC_IS_SENSOR ; 
 int /*<<< orphan*/  GRP_ID_SENSOR ; 
 struct fimc_md* FUNC1 (struct v4l2_async_notifier*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_async_notifier *notifier,
				 struct v4l2_subdev *subdev,
				 struct v4l2_async_subdev *asd)
{
	struct fimc_md *fmd = FUNC1(notifier);
	struct fimc_sensor_info *si = NULL;
	int i;

	/* Find platform data for this sensor subdev */
	for (i = 0; i < FUNC0(fmd->sensor); i++)
		if (fmd->sensor[i].asd.match.fwnode ==
		    FUNC2(subdev->dev->of_node))
			si = &fmd->sensor[i];

	if (si == NULL)
		return -EINVAL;

	FUNC4(subdev, &si->pdata);

	if (si->pdata.fimc_bus_type == FIMC_BUS_TYPE_ISP_WRITEBACK)
		subdev->grp_id = GRP_ID_FIMC_IS_SENSOR;
	else
		subdev->grp_id = GRP_ID_SENSOR;

	si->subdev = subdev;

	FUNC3(&fmd->v4l2_dev, "Registered sensor subdevice: %s (%d)\n",
		  subdev->name, fmd->num_sensors);

	fmd->num_sensors++;

	return 0;
}