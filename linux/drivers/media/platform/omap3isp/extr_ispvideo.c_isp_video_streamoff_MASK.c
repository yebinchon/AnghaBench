#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct isp_video_fh {int /*<<< orphan*/  queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct isp_video {int type; int error; int /*<<< orphan*/  stream_lock; TYPE_1__ video; int /*<<< orphan*/ * queue; int /*<<< orphan*/  queue_lock; } ;
struct isp_pipeline {int state; int /*<<< orphan*/  ent_enum; int /*<<< orphan*/  lock; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
typedef  enum isp_pipeline_state { ____Placeholder_isp_pipeline_state } isp_pipeline_state ;

/* Variables and functions */
 int EINVAL ; 
 int ISP_PIPELINE_QUEUE_INPUT ; 
 int ISP_PIPELINE_QUEUE_OUTPUT ; 
 int ISP_PIPELINE_STREAM_INPUT ; 
 int ISP_PIPELINE_STREAM_OUTPUT ; 
 int /*<<< orphan*/  ISP_PIPELINE_STREAM_STOPPED ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_pipeline*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_video*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct isp_pipeline* FUNC8 (int /*<<< orphan*/ *) ; 
 struct isp_video_fh* FUNC9 (void*) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 struct isp_video* FUNC12 (struct file*) ; 

__attribute__((used)) static int
FUNC13(struct file *file, void *fh, enum v4l2_buf_type type)
{
	struct isp_video_fh *vfh = FUNC9(fh);
	struct isp_video *video = FUNC12(file);
	struct isp_pipeline *pipe = FUNC8(&video->video.entity);
	enum isp_pipeline_state state;
	unsigned int streaming;
	unsigned long flags;

	if (type != video->type)
		return -EINVAL;

	FUNC2(&video->stream_lock);

	/* Make sure we're not streaming yet. */
	FUNC2(&video->queue_lock);
	streaming = FUNC10(&vfh->queue);
	FUNC3(&video->queue_lock);

	if (!streaming)
		goto done;

	/* Update the pipeline state. */
	if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
		state = ISP_PIPELINE_STREAM_OUTPUT
		      | ISP_PIPELINE_QUEUE_OUTPUT;
	else
		state = ISP_PIPELINE_STREAM_INPUT
		      | ISP_PIPELINE_QUEUE_INPUT;

	FUNC6(&pipe->lock, flags);
	pipe->state &= ~state;
	FUNC7(&pipe->lock, flags);

	/* Stop the stream. */
	FUNC4(pipe, ISP_PIPELINE_STREAM_STOPPED);
	FUNC5(video);

	FUNC2(&video->queue_lock);
	FUNC11(&vfh->queue, type);
	FUNC3(&video->queue_lock);
	video->queue = NULL;
	video->error = false;

	/* TODO: Implement PM QoS */
	FUNC1(&video->video.entity);

	FUNC0(&pipe->ent_enum);

done:
	FUNC3(&video->stream_lock);
	return 0;
}