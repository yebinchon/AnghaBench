#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vsp1_video {TYPE_2__* rwpf; } ;
struct vsp1_pipeline {scalar_t__ stream_count; scalar_t__ num_inputs; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  lock; } ;
struct vb2_queue {int dummy; } ;
struct TYPE_3__ {struct vsp1_pipeline* pipe; } ;
struct TYPE_4__ {TYPE_1__ entity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vsp1_video* FUNC4 (struct vb2_queue*) ; 
 scalar_t__ FUNC5 (struct vsp1_pipeline*) ; 
 int /*<<< orphan*/  FUNC6 (struct vsp1_pipeline*) ; 
 int /*<<< orphan*/  FUNC7 (struct vsp1_pipeline*) ; 
 int /*<<< orphan*/  FUNC8 (struct vsp1_video*) ; 
 int FUNC9 (struct vsp1_pipeline*) ; 

__attribute__((used)) static int FUNC10(struct vb2_queue *vq, unsigned int count)
{
	struct vsp1_video *video = FUNC4(vq);
	struct vsp1_pipeline *pipe = video->rwpf->entity.pipe;
	bool start_pipeline = false;
	unsigned long flags;
	int ret;

	FUNC0(&pipe->lock);
	if (pipe->stream_count == pipe->num_inputs) {
		ret = FUNC9(pipe);
		if (ret < 0) {
			FUNC8(video);
			FUNC6(pipe);
			FUNC1(&pipe->lock);
			return ret;
		}

		start_pipeline = true;
	}

	pipe->stream_count++;
	FUNC1(&pipe->lock);

	/*
	 * vsp1_pipeline_ready() is not sufficient to establish that all streams
	 * are prepared and the pipeline is configured, as multiple streams
	 * can race through streamon with buffers already queued; Therefore we
	 * don't even attempt to start the pipeline until the last stream has
	 * called through here.
	 */
	if (!start_pipeline)
		return 0;

	FUNC2(&pipe->irqlock, flags);
	if (FUNC5(pipe))
		FUNC7(pipe);
	FUNC3(&pipe->irqlock, flags);

	return 0;
}