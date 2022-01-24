#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {scalar_t__ type; int /*<<< orphan*/  vb2_queue; } ;
struct uvc_video_queue {int flags; } ;
struct uvc_buffer {scalar_t__ bytesused; scalar_t__ length; int /*<<< orphan*/  mem; scalar_t__ error; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  UVC_BUF_STATE_QUEUED ; 
 int UVC_QUEUE_DISCONNECTED ; 
 int /*<<< orphan*/  UVC_TRACE_CAPTURE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 struct vb2_v4l2_buffer* FUNC0 (struct vb2_buffer*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct uvc_buffer* FUNC3 (struct vb2_v4l2_buffer*) ; 
 struct uvc_video_queue* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC0(vb);
	struct uvc_video_queue *queue = FUNC4(vb->vb2_queue);
	struct uvc_buffer *buf = FUNC3(vbuf);

	if (vb->type == V4L2_BUF_TYPE_VIDEO_OUTPUT &&
	    FUNC5(vb, 0) > FUNC6(vb, 0)) {
		FUNC2(UVC_TRACE_CAPTURE, "[E] Bytes used out of bounds.\n");
		return -EINVAL;
	}

	if (FUNC1(queue->flags & UVC_QUEUE_DISCONNECTED))
		return -ENODEV;

	buf->state = UVC_BUF_STATE_QUEUED;
	buf->error = 0;
	buf->mem = FUNC7(vb, 0);
	buf->length = FUNC6(vb, 0);
	if (vb->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
		buf->bytesused = 0;
	else
		buf->bytesused = FUNC5(vb, 0);

	return 0;
}