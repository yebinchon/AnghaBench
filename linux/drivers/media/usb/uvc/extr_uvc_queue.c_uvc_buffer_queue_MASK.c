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
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct uvc_video_queue {int flags; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  irqqueue; } ;
struct uvc_buffer {int /*<<< orphan*/  state; int /*<<< orphan*/  queue; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  UVC_BUF_STATE_ERROR ; 
 int UVC_QUEUE_DISCONNECTED ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vb2_v4l2_buffer* FUNC5 (struct vb2_buffer*) ; 
 struct uvc_buffer* FUNC6 (struct vb2_v4l2_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 struct uvc_video_queue* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC5(vb);
	struct uvc_video_queue *queue = FUNC8(vb->vb2_queue);
	struct uvc_buffer *buf = FUNC6(vbuf);
	unsigned long flags;

	FUNC3(&queue->irqlock, flags);
	if (FUNC1(!(queue->flags & UVC_QUEUE_DISCONNECTED))) {
		FUNC0(&buf->ref);
		FUNC2(&buf->queue, &queue->irqqueue);
	} else {
		/* If the device is disconnected return the buffer to userspace
		 * directly. The next QBUF call will fail with -ENODEV.
		 */
		buf->state = UVC_BUF_STATE_ERROR;
		FUNC7(vb, VB2_BUF_STATE_ERROR);
	}

	FUNC4(&queue->irqlock, flags);
}