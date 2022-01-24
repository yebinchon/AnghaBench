#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct v4l2_async_subdev {int dummy; } ;
struct TYPE_12__ {scalar_t__ hw_revision; int /*<<< orphan*/  model; int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_10__ {int /*<<< orphan*/ * ctrl_handler; TYPE_8__* mdev; } ;
struct sun6i_csi {TYPE_8__ media_dev; TYPE_4__ notifier; int /*<<< orphan*/  ctrl_handler; TYPE_1__ v4l2_dev; int /*<<< orphan*/  video; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  sun6i_csi_async_ops ; 
 int /*<<< orphan*/  sun6i_csi_fwnode_parse ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct sun6i_csi*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct sun6i_csi *csi)
{
	int ret;

	csi->media_dev.dev = csi->dev;
	FUNC3(csi->media_dev.model, "Allwinner Video Capture Device",
		sizeof(csi->media_dev.model));
	csi->media_dev.hw_revision = 0;

	FUNC2(&csi->media_dev);
	FUNC7(&csi->notifier);

	ret = FUNC11(&csi->ctrl_handler, 0);
	if (ret) {
		FUNC0(csi->dev, "V4L2 controls handler init failed (%d)\n",
			ret);
		goto clean_media;
	}

	csi->v4l2_dev.mdev = &csi->media_dev;
	csi->v4l2_dev.ctrl_handler = &csi->ctrl_handler;
	ret = FUNC12(csi->dev, &csi->v4l2_dev);
	if (ret) {
		FUNC0(csi->dev, "V4L2 device registration failed (%d)\n",
			ret);
		goto free_ctrl;
	}

	ret = FUNC5(&csi->video, csi, "sun6i-csi");
	if (ret)
		goto unreg_v4l2;

	ret = FUNC8(csi->dev,
							 &csi->notifier,
							 sizeof(struct v4l2_async_subdev),
							 sun6i_csi_fwnode_parse);
	if (ret)
		goto clean_video;

	csi->notifier.ops = &sun6i_csi_async_ops;

	ret = FUNC9(&csi->v4l2_dev, &csi->notifier);
	if (ret) {
		FUNC0(csi->dev, "notifier registration failed\n");
		goto clean_video;
	}

	return 0;

clean_video:
	FUNC4(&csi->video);
unreg_v4l2:
	FUNC13(&csi->v4l2_dev);
free_ctrl:
	FUNC10(&csi->ctrl_handler);
clean_media:
	FUNC6(&csi->notifier);
	FUNC1(&csi->media_dev);

	return ret;
}