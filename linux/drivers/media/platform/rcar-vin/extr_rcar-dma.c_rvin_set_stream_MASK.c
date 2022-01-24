#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {struct media_pipeline* pipe; } ;
struct v4l2_subdev {TYPE_4__ entity; } ;
struct TYPE_10__ {struct media_device* mdev; } ;
struct TYPE_13__ {TYPE_3__ graph_obj; } ;
struct media_pipeline {int dummy; } ;
struct TYPE_12__ {TYPE_6__ entity; struct media_pipeline pipe; } ;
struct rvin_dev {TYPE_5__ vdev; int /*<<< orphan*/  pad; TYPE_2__* parallel; TYPE_1__* info; } ;
struct media_pad {int /*<<< orphan*/  entity; } ;
struct media_device {int /*<<< orphan*/  graph_mutex; } ;
struct TYPE_9__ {struct v4l2_subdev* subdev; } ;
struct TYPE_8__ {int /*<<< orphan*/  use_mc; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 int EPIPE ; 
 int FUNC0 (TYPE_6__*,struct media_pipeline*) ; 
 struct media_pad* FUNC1 (int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct rvin_dev*,struct v4l2_subdev*,struct media_pad*) ; 
 int /*<<< orphan*/  s_stream ; 
 int FUNC7 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC8(struct rvin_dev *vin, int on)
{
	struct media_pipeline *pipe;
	struct media_device *mdev;
	struct v4l2_subdev *sd;
	struct media_pad *pad;
	int ret;

	/* No media controller used, simply pass operation to subdevice. */
	if (!vin->info->use_mc) {
		ret = FUNC7(vin->parallel->subdev, video, s_stream,
				       on);

		return ret == -ENOIOCTLCMD ? 0 : ret;
	}

	pad = FUNC1(&vin->pad);
	if (!pad)
		return -EPIPE;

	sd = FUNC2(pad->entity);

	if (!on) {
		FUNC3(&vin->vdev.entity);
		return FUNC7(sd, video, s_stream, 0);
	}

	ret = FUNC6(vin, sd, pad);
	if (ret)
		return ret;

	/*
	 * The graph lock needs to be taken to protect concurrent
	 * starts of multiple VIN instances as they might share
	 * a common subdevice down the line and then should use
	 * the same pipe.
	 */
	mdev = vin->vdev.entity.graph_obj.mdev;
	FUNC4(&mdev->graph_mutex);
	pipe = sd->entity.pipe ? sd->entity.pipe : &vin->vdev.pipe;
	ret = FUNC0(&vin->vdev.entity, pipe);
	FUNC5(&mdev->graph_mutex);
	if (ret)
		return ret;

	ret = FUNC7(sd, video, s_stream, 1);
	if (ret == -ENOIOCTLCMD)
		ret = 0;
	if (ret)
		FUNC3(&vin->vdev.entity);

	return ret;
}