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
struct uvc_video_queue {int /*<<< orphan*/  irqlock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  UVC_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  UVC_QUEUE_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct uvc_video_queue*,int /*<<< orphan*/ ) ; 

void FUNC3(struct uvc_video_queue *queue, int disconnect)
{
	unsigned long flags;

	FUNC0(&queue->irqlock, flags);
	FUNC2(queue, UVC_BUF_STATE_ERROR);
	/* This must be protected by the irqlock spinlock to avoid race
	 * conditions between uvc_buffer_queue and the disconnection event that
	 * could result in an interruptible wait in uvc_dequeue_buffer. Do not
	 * blindly replace this logic by checking for the UVC_QUEUE_DISCONNECTED
	 * state outside the queue code.
	 */
	if (disconnect)
		queue->flags |= UVC_QUEUE_DISCONNECTED;
	FUNC1(&queue->irqlock, flags);
}