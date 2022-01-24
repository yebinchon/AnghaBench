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
struct TYPE_5__ {int /*<<< orphan*/  entity; } ;
struct TYPE_6__ {scalar_t__ owner; } ;
struct vsp1_video {TYPE_2__ video; TYPE_3__ queue; TYPE_1__* vsp1; } ;
struct vsp1_pipeline {int /*<<< orphan*/  pipe; } ;
struct v4l2_fh {int /*<<< orphan*/  vdev; } ;
struct media_device {int /*<<< orphan*/  graph_mutex; } ;
struct file {scalar_t__ private_data; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_4__ {struct media_device media_dev; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct vsp1_pipeline*) ; 
 int FUNC1 (struct vsp1_pipeline*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct vsp1_video* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int) ; 
 struct vsp1_pipeline* FUNC8 (struct vsp1_video*) ; 
 int /*<<< orphan*/  FUNC9 (struct vsp1_pipeline*) ; 
 int FUNC10 (struct vsp1_video*) ; 

__attribute__((used)) static int
FUNC11(struct file *file, void *fh, enum v4l2_buf_type type)
{
	struct v4l2_fh *vfh = file->private_data;
	struct vsp1_video *video = FUNC6(vfh->vdev);
	struct media_device *mdev = &video->vsp1->media_dev;
	struct vsp1_pipeline *pipe;
	int ret;

	if (video->queue.owner && video->queue.owner != file->private_data)
		return -EBUSY;

	/*
	 * Get a pipeline for the video node and start streaming on it. No link
	 * touching an entity in the pipeline can be activated or deactivated
	 * once streaming is started.
	 */
	FUNC4(&mdev->graph_mutex);

	pipe = FUNC8(video);
	if (FUNC0(pipe)) {
		FUNC5(&mdev->graph_mutex);
		return FUNC1(pipe);
	}

	ret = FUNC2(&video->video.entity, &pipe->pipe);
	if (ret < 0) {
		FUNC5(&mdev->graph_mutex);
		goto err_pipe;
	}

	FUNC5(&mdev->graph_mutex);

	/*
	 * Verify that the configured format matches the output of the connected
	 * subdev.
	 */
	ret = FUNC10(video);
	if (ret < 0)
		goto err_stop;

	/* Start the queue. */
	ret = FUNC7(&video->queue, type);
	if (ret < 0)
		goto err_stop;

	return 0;

err_stop:
	FUNC3(&video->video.entity);
err_pipe:
	FUNC9(pipe);
	return ret;
}