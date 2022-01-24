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
struct vb2_queue {int dummy; } ;
struct uvc_video_queue {int /*<<< orphan*/  irqlock; scalar_t__ buf_used; } ;
struct uvc_streaming {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UVC_BUF_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uvc_video_queue*,int /*<<< orphan*/ ) ; 
 struct uvc_streaming* FUNC4 (struct uvc_video_queue*) ; 
 int FUNC5 (struct uvc_streaming*) ; 
 struct uvc_video_queue* FUNC6 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC7(struct vb2_queue *vq, unsigned int count)
{
	struct uvc_video_queue *queue = FUNC6(vq);
	struct uvc_streaming *stream = FUNC4(queue);
	int ret;

	FUNC0();

	queue->buf_used = 0;

	ret = FUNC5(stream);
	if (ret == 0)
		return 0;

	FUNC1(&queue->irqlock);
	FUNC3(queue, UVC_BUF_STATE_QUEUED);
	FUNC2(&queue->irqlock);

	return ret;
}