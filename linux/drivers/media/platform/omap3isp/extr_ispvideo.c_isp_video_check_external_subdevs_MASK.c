#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  code; } ;
struct v4l2_subdev_format {TYPE_7__ format; int /*<<< orphan*/  which; int /*<<< orphan*/  pad; } ;
struct v4l2_ext_controls {int count; unsigned int value64; struct v4l2_ext_controls* controls; int /*<<< orphan*/  id; } ;
struct v4l2_ext_control {int count; unsigned int value64; struct v4l2_ext_control* controls; int /*<<< orphan*/  id; } ;
struct media_pad {int /*<<< orphan*/  index; struct media_entity* entity; } ;
struct media_entity {int /*<<< orphan*/ * pads; } ;
struct isp_video {int /*<<< orphan*/  video; struct isp_device* isp; } ;
struct isp_pipeline {unsigned int external_rate; int /*<<< orphan*/  ent_enum; TYPE_9__* external; int /*<<< orphan*/  external_width; int /*<<< orphan*/ * input; } ;
struct TYPE_22__ {struct media_entity entity; } ;
struct TYPE_14__ {TYPE_8__ subdev; } ;
struct TYPE_19__ {struct media_entity entity; } ;
struct TYPE_20__ {TYPE_5__ subdev; } ;
struct TYPE_17__ {struct media_entity entity; } ;
struct TYPE_18__ {TYPE_3__ subdev; } ;
struct TYPE_15__ {struct media_entity entity; } ;
struct TYPE_16__ {TYPE_1__ subdev; } ;
struct isp_device {TYPE_11__ isp_ccdc; int /*<<< orphan*/  dev; TYPE_6__ isp_ccp2; TYPE_4__ isp_csi2c; TYPE_2__ isp_csi2a; } ;
typedef  int /*<<< orphan*/  ctrls ;
typedef  int /*<<< orphan*/  ctrl ;
struct TYPE_23__ {int /*<<< orphan*/  name; int /*<<< orphan*/  ctrl_handler; } ;
struct TYPE_13__ {int /*<<< orphan*/  width; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct media_entity**) ; 
 int EINVAL ; 
 int ENOSPC ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  V4L2_CID_PIXEL_RATE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  get_fmt ; 
 int /*<<< orphan*/  FUNC2 (struct media_entity*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct media_entity*) ; 
 struct media_pad* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_9__* FUNC5 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_ext_controls*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_11__*,unsigned int*) ; 
 TYPE_10__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pad ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct v4l2_ext_controls*) ; 
 int FUNC11 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 

__attribute__((used)) static int FUNC12(struct isp_video *video,
					    struct isp_pipeline *pipe)
{
	struct isp_device *isp = video->isp;
	struct media_entity *ents[] = {
		&isp->isp_csi2a.subdev.entity,
		&isp->isp_csi2c.subdev.entity,
		&isp->isp_ccp2.subdev.entity,
		&isp->isp_ccdc.subdev.entity
	};
	struct media_pad *source_pad;
	struct media_entity *source = NULL;
	struct media_entity *sink;
	struct v4l2_subdev_format fmt;
	struct v4l2_ext_controls ctrls;
	struct v4l2_ext_control ctrl;
	unsigned int i;
	int ret;

	/* Memory-to-memory pipelines have no external subdev. */
	if (pipe->input != NULL)
		return 0;

	for (i = 0; i < FUNC0(ents); i++) {
		/* Is the entity part of the pipeline? */
		if (!FUNC3(&pipe->ent_enum, ents[i]))
			continue;

		/* ISP entities have always sink pad == 0. Find source. */
		source_pad = FUNC4(&ents[i]->pads[0]);
		if (source_pad == NULL)
			continue;

		source = source_pad->entity;
		sink = ents[i];
		break;
	}

	if (!source) {
		FUNC1(isp->dev, "can't find source, failing now\n");
		return -EINVAL;
	}

	if (!FUNC2(source))
		return 0;

	pipe->external = FUNC5(source);

	fmt.pad = source_pad->index;
	fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
	ret = FUNC11(FUNC5(sink),
			       pad, get_fmt, NULL, &fmt);
	if (FUNC9(ret < 0)) {
		FUNC1(isp->dev, "get_fmt returned null!\n");
		return ret;
	}

	pipe->external_width =
		FUNC8(fmt.format.code)->width;

	FUNC6(&ctrls, 0, sizeof(ctrls));
	FUNC6(&ctrl, 0, sizeof(ctrl));

	ctrl.id = V4L2_CID_PIXEL_RATE;

	ctrls.count = 1;
	ctrls.controls = &ctrl;
	ret = FUNC10(pipe->external->ctrl_handler, &video->video,
			       NULL, &ctrls);
	if (ret < 0) {
		FUNC1(isp->dev, "no pixel rate control in subdev %s\n",
			 pipe->external->name);
		return ret;
	}

	pipe->external_rate = ctrl.value64;

	if (FUNC3(&pipe->ent_enum,
				   &isp->isp_ccdc.subdev.entity)) {
		unsigned int rate = UINT_MAX;
		/*
		 * Check that maximum allowed CCDC pixel rate isn't
		 * exceeded by the pixel rate.
		 */
		FUNC7(&isp->isp_ccdc, &rate);
		if (pipe->external_rate > rate)
			return -ENOSPC;
	}

	return 0;
}