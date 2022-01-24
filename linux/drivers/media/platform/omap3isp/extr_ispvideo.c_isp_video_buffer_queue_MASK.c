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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct isp_video_fh {struct isp_video* video; } ;
struct TYPE_4__ {int /*<<< orphan*/  entity; } ;
struct isp_video {scalar_t__ type; int /*<<< orphan*/  dmaqueue_flags; TYPE_3__* ops; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  dmaqueue; int /*<<< orphan*/  error; TYPE_1__ video; } ;
struct isp_pipeline {int state; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  vb2_buf; } ;
struct isp_buffer {int /*<<< orphan*/  irqlist; TYPE_2__ vb; } ;
typedef  enum isp_pipeline_state { ____Placeholder_isp_pipeline_state } isp_pipeline_state ;
struct TYPE_6__ {int /*<<< orphan*/  (* queue ) (struct isp_video*,struct isp_buffer*) ;} ;

/* Variables and functions */
 int ISP_PIPELINE_QUEUE_INPUT ; 
 int ISP_PIPELINE_QUEUE_OUTPUT ; 
 int ISP_PIPELINE_STREAM ; 
 int /*<<< orphan*/  ISP_PIPELINE_STREAM_SINGLESHOT ; 
 int /*<<< orphan*/  ISP_VIDEO_DMAQUEUE_QUEUED ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 unsigned int FUNC0 (struct isp_pipeline*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_pipeline*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct isp_video*,struct isp_buffer*) ; 
 struct isp_buffer* FUNC7 (struct vb2_v4l2_buffer*) ; 
 struct isp_pipeline* FUNC8 (int /*<<< orphan*/ *) ; 
 struct vb2_v4l2_buffer* FUNC9 (struct vb2_buffer*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct isp_video_fh* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct vb2_buffer *buf)
{
	struct vb2_v4l2_buffer *vbuf = FUNC9(buf);
	struct isp_video_fh *vfh = FUNC12(buf->vb2_queue);
	struct isp_buffer *buffer = FUNC7(vbuf);
	struct isp_video *video = vfh->video;
	struct isp_pipeline *pipe = FUNC8(&video->video.entity);
	enum isp_pipeline_state state;
	unsigned long flags;
	unsigned int empty;
	unsigned int start;

	FUNC4(&video->irqlock, flags);

	if (FUNC10(video->error)) {
		FUNC11(&buffer->vb.vb2_buf, VB2_BUF_STATE_ERROR);
		FUNC5(&video->irqlock, flags);
		return;
	}

	empty = FUNC2(&video->dmaqueue);
	FUNC1(&buffer->irqlist, &video->dmaqueue);

	FUNC5(&video->irqlock, flags);

	if (empty) {
		if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
			state = ISP_PIPELINE_QUEUE_OUTPUT;
		else
			state = ISP_PIPELINE_QUEUE_INPUT;

		FUNC4(&pipe->lock, flags);
		pipe->state |= state;
		video->ops->queue(video, buffer);
		video->dmaqueue_flags |= ISP_VIDEO_DMAQUEUE_QUEUED;

		start = FUNC0(pipe);
		if (start)
			pipe->state |= ISP_PIPELINE_STREAM;
		FUNC5(&pipe->lock, flags);

		if (start)
			FUNC3(pipe,
						ISP_PIPELINE_STREAM_SINGLESHOT);
	}
}