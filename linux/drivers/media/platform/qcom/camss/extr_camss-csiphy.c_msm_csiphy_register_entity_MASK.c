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
struct TYPE_5__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  function; } ;
struct v4l2_subdev {TYPE_2__ entity; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/ * internal_ops; } ;
struct v4l2_device {int dummy; } ;
struct media_pad {int /*<<< orphan*/  flags; } ;
struct device {int dummy; } ;
struct csiphy_device {int /*<<< orphan*/  id; TYPE_1__* camss; struct media_pad* pads; struct v4l2_subdev subdev; } ;
struct TYPE_4__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_IO_V4L ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 char* MSM_CSIPHY_NAME ; 
 int /*<<< orphan*/  MSM_CSIPHY_PADS_NUM ; 
 size_t MSM_CSIPHY_PAD_SINK ; 
 size_t MSM_CSIPHY_PAD_SRC ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  csiphy_media_ops ; 
 int /*<<< orphan*/  csiphy_v4l2_internal_ops ; 
 int /*<<< orphan*/  csiphy_v4l2_ops ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,struct media_pad*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct v4l2_device*,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,struct csiphy_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

int FUNC9(struct csiphy_device *csiphy,
			       struct v4l2_device *v4l2_dev)
{
	struct v4l2_subdev *sd = &csiphy->subdev;
	struct media_pad *pads = csiphy->pads;
	struct device *dev = csiphy->camss->dev;
	int ret;

	FUNC8(sd, &csiphy_v4l2_ops);
	sd->internal_ops = &csiphy_v4l2_internal_ops;
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
	FUNC5(sd->name, FUNC0(sd->name), "%s%d",
		 MSM_CSIPHY_NAME, csiphy->id);
	FUNC7(sd, csiphy);

	ret = FUNC1(sd, NULL);
	if (ret < 0) {
		FUNC2(dev, "Failed to init format: %d\n", ret);
		return ret;
	}

	pads[MSM_CSIPHY_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
	pads[MSM_CSIPHY_PAD_SRC].flags = MEDIA_PAD_FL_SOURCE;

	sd->entity.function = MEDIA_ENT_F_IO_V4L;
	sd->entity.ops = &csiphy_media_ops;
	ret = FUNC4(&sd->entity, MSM_CSIPHY_PADS_NUM, pads);
	if (ret < 0) {
		FUNC2(dev, "Failed to init media entity: %d\n", ret);
		return ret;
	}

	ret = FUNC6(v4l2_dev, sd);
	if (ret < 0) {
		FUNC2(dev, "Failed to register subdev: %d\n", ret);
		FUNC3(&sd->entity);
	}

	return ret;
}