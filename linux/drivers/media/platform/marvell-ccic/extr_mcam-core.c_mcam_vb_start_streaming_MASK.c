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
struct vb2_queue {int dummy; } ;
struct TYPE_2__ {scalar_t__ delivered; scalar_t__ singles; scalar_t__ frames; } ;
struct mcam_camera {scalar_t__ state; scalar_t__ buffer_mode; unsigned int nbufs; int /*<<< orphan*/  flags; int /*<<< orphan*/  buffers; scalar_t__ sequence; TYPE_1__ frame_state; } ;

/* Variables and functions */
 scalar_t__ B_vmalloc ; 
 scalar_t__ CF_FRAME_SOF0 ; 
 int EINVAL ; 
 scalar_t__ S_BUFWAIT ; 
 scalar_t__ S_IDLE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_queue*,int /*<<< orphan*/ ) ; 
 struct mcam_camera* FUNC4 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC5(struct vb2_queue *vq, unsigned int count)
{
	struct mcam_camera *cam = FUNC4(vq);
	unsigned int frame;
	int ret;

	if (cam->state != S_IDLE) {
		FUNC3(vq, VB2_BUF_STATE_QUEUED);
		return -EINVAL;
	}
	cam->frame_state.frames = 0;
	cam->frame_state.singles = 0;
	cam->frame_state.delivered = 0;
	cam->sequence = 0;
	/*
	 * Videobuf2 sneakily hoards all the buffers and won't
	 * give them to us until *after* streaming starts.  But
	 * we can't actually start streaming until we have a
	 * destination.  So go into a wait state and hope they
	 * give us buffers soon.
	 */
	if (cam->buffer_mode != B_vmalloc && FUNC1(&cam->buffers)) {
		cam->state = S_BUFWAIT;
		return 0;
	}

	/*
	 * Ensure clear the left over frame flags
	 * before every really start streaming
	 */
	for (frame = 0; frame < cam->nbufs; frame++)
		FUNC0(CF_FRAME_SOF0 + frame, &cam->flags);

	ret = FUNC2(cam);
	if (ret)
		FUNC3(vq, VB2_BUF_STATE_QUEUED);
	return ret;
}