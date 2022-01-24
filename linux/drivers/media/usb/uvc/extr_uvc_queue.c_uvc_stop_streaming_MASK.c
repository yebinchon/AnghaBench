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
struct vb2_queue {scalar_t__ type; } ;
struct uvc_video_queue {int /*<<< orphan*/  irqlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  UVC_BUF_STATE_ERROR ; 
 scalar_t__ V4L2_BUF_TYPE_META_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uvc_video_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uvc_video_queue*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct uvc_video_queue* FUNC6 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC7(struct vb2_queue *vq)
{
	struct uvc_video_queue *queue = FUNC6(vq);

	FUNC0();

	if (vq->type != V4L2_BUF_TYPE_META_CAPTURE)
		FUNC5(FUNC4(queue));

	FUNC1(&queue->irqlock);
	FUNC3(queue, UVC_BUF_STATE_ERROR);
	FUNC2(&queue->irqlock);
}