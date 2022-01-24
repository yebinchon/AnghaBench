#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  function; } ;
struct v4l2_subdev {int flags; TYPE_5__ entity; TYPE_2__* ctrl_handler; int /*<<< orphan*/  name; int /*<<< orphan*/ * internal_ops; } ;
struct v4l2_device {int dummy; } ;
struct media_pad {int /*<<< orphan*/  flags; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int error; } ;
struct csid_device {TYPE_2__ ctrls; struct v4l2_subdev subdev; int /*<<< orphan*/  testgen_mode; int /*<<< orphan*/  id; TYPE_1__* camss; struct media_pad* pads; } ;
struct TYPE_7__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_IO_V4L ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 char* MSM_CSID_NAME ; 
 int /*<<< orphan*/  MSM_CSID_PADS_NUM ; 
 size_t MSM_CSID_PAD_SINK ; 
 size_t MSM_CSID_PAD_SRC ; 
 int /*<<< orphan*/  V4L2_CID_TEST_PATTERN ; 
 int V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int V4L2_SUBDEV_FL_HAS_EVENTS ; 
 int /*<<< orphan*/  csid_ctrl_ops ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  csid_media_ops ; 
 int /*<<< orphan*/  csid_test_pattern_menu ; 
 int /*<<< orphan*/  csid_v4l2_internal_ops ; 
 int /*<<< orphan*/  csid_v4l2_ops ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,struct media_pad*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct v4l2_device*,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*,struct csid_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

int FUNC12(struct csid_device *csid,
			     struct v4l2_device *v4l2_dev)
{
	struct v4l2_subdev *sd = &csid->subdev;
	struct media_pad *pads = csid->pads;
	struct device *dev = csid->camss->dev;
	int ret;

	FUNC11(sd, &csid_v4l2_ops);
	sd->internal_ops = &csid_v4l2_internal_ops;
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
		     V4L2_SUBDEV_FL_HAS_EVENTS;
	FUNC5(sd->name, FUNC0(sd->name), "%s%d",
		 MSM_CSID_NAME, csid->id);
	FUNC10(sd, csid);

	ret = FUNC7(&csid->ctrls, 1);
	if (ret < 0) {
		FUNC2(dev, "Failed to init ctrl handler: %d\n", ret);
		return ret;
	}

	csid->testgen_mode = FUNC8(&csid->ctrls,
				&csid_ctrl_ops, V4L2_CID_TEST_PATTERN,
				FUNC0(csid_test_pattern_menu) - 1, 0, 0,
				csid_test_pattern_menu);

	if (csid->ctrls.error) {
		FUNC2(dev, "Failed to init ctrl: %d\n", csid->ctrls.error);
		ret = csid->ctrls.error;
		goto free_ctrl;
	}

	csid->subdev.ctrl_handler = &csid->ctrls;

	ret = FUNC1(sd, NULL);
	if (ret < 0) {
		FUNC2(dev, "Failed to init format: %d\n", ret);
		goto free_ctrl;
	}

	pads[MSM_CSID_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
	pads[MSM_CSID_PAD_SRC].flags = MEDIA_PAD_FL_SOURCE;

	sd->entity.function = MEDIA_ENT_F_IO_V4L;
	sd->entity.ops = &csid_media_ops;
	ret = FUNC4(&sd->entity, MSM_CSID_PADS_NUM, pads);
	if (ret < 0) {
		FUNC2(dev, "Failed to init media entity: %d\n", ret);
		goto free_ctrl;
	}

	ret = FUNC9(v4l2_dev, sd);
	if (ret < 0) {
		FUNC2(dev, "Failed to register subdev: %d\n", ret);
		goto media_cleanup;
	}

	return 0;

media_cleanup:
	FUNC3(&sd->entity);
free_ctrl:
	FUNC6(&csid->ctrls);

	return ret;
}