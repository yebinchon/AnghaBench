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
struct vsp1_video {int pipe_index; int /*<<< orphan*/  queue; TYPE_2__* rwpf; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  irqqueue; } ;
struct vsp1_vb2_buffer {int /*<<< orphan*/  mem; int /*<<< orphan*/  queue; } ;
struct vsp1_pipeline {int buffers_ready; int /*<<< orphan*/  irqlock; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct TYPE_3__ {struct vsp1_pipeline* pipe; } ;
struct TYPE_4__ {int /*<<< orphan*/  mem; TYPE_1__ entity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vb2_v4l2_buffer* FUNC4 (struct vb2_buffer*) ; 
 struct vsp1_vb2_buffer* FUNC5 (struct vb2_v4l2_buffer*) ; 
 struct vsp1_video* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct vsp1_pipeline*) ; 
 int /*<<< orphan*/  FUNC9 (struct vsp1_pipeline*) ; 

__attribute__((used)) static void FUNC10(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC4(vb);
	struct vsp1_video *video = FUNC6(vb->vb2_queue);
	struct vsp1_pipeline *pipe = video->rwpf->entity.pipe;
	struct vsp1_vb2_buffer *buf = FUNC5(vbuf);
	unsigned long flags;
	bool empty;

	FUNC2(&video->irqlock, flags);
	empty = FUNC1(&video->irqqueue);
	FUNC0(&buf->queue, &video->irqqueue);
	FUNC3(&video->irqlock, flags);

	if (!empty)
		return;

	FUNC2(&pipe->irqlock, flags);

	video->rwpf->mem = buf->mem;
	pipe->buffers_ready |= 1 << video->pipe_index;

	if (FUNC7(&video->queue) &&
	    FUNC8(pipe))
		FUNC9(pipe);

	FUNC3(&pipe->irqlock, flags);
}