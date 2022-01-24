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
struct TYPE_8__ {int /*<<< orphan*/  entity; } ;
struct vsp1_video {int pipe_index; TYPE_4__ video; TYPE_3__* vsp1; int /*<<< orphan*/  irqlock; TYPE_2__* rwpf; } ;
struct vsp1_pipeline {int buffers_ready; scalar_t__ stream_count; scalar_t__ num_inputs; int /*<<< orphan*/  lock; } ;
struct vb2_queue {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct vsp1_pipeline* pipe; } ;
struct TYPE_6__ {TYPE_1__ entity; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vsp1_video* FUNC6 (struct vb2_queue*) ; 
 int FUNC7 (struct vsp1_pipeline*) ; 
 int /*<<< orphan*/  FUNC8 (struct vsp1_pipeline*) ; 
 int /*<<< orphan*/  FUNC9 (struct vsp1_pipeline*) ; 
 int /*<<< orphan*/  FUNC10 (struct vsp1_video*) ; 

__attribute__((used)) static void FUNC11(struct vb2_queue *vq)
{
	struct vsp1_video *video = FUNC6(vq);
	struct vsp1_pipeline *pipe = video->rwpf->entity.pipe;
	unsigned long flags;
	int ret;

	/*
	 * Clear the buffers ready flag to make sure the device won't be started
	 * by a QBUF on the video node on the other side of the pipeline.
	 */
	FUNC4(&video->irqlock, flags);
	pipe->buffers_ready &= ~(1 << video->pipe_index);
	FUNC5(&video->irqlock, flags);

	FUNC2(&pipe->lock);
	if (--pipe->stream_count == pipe->num_inputs) {
		/* Stop the pipeline. */
		ret = FUNC7(pipe);
		if (ret == -ETIMEDOUT)
			FUNC0(video->vsp1->dev, "pipeline stop timeout\n");

		FUNC8(pipe);
	}
	FUNC3(&pipe->lock);

	FUNC1(&video->video.entity);
	FUNC10(video);
	FUNC9(pipe);
}