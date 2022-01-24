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
struct uvc_video_queue {int /*<<< orphan*/  irqlock; } ;
struct uvc_buffer {int dummy; } ;

/* Variables and functions */
 struct uvc_buffer* FUNC0 (struct uvc_video_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct uvc_buffer *FUNC3(struct uvc_video_queue *queue)
{
	struct uvc_buffer *nextbuf;
	unsigned long flags;

	FUNC1(&queue->irqlock, flags);
	nextbuf = FUNC0(queue);
	FUNC2(&queue->irqlock, flags);

	return nextbuf;
}