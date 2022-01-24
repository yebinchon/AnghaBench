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
struct v4l2_buffer {int dummy; } ;
struct uvc_video_queue {int /*<<< orphan*/  mutex; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct v4l2_buffer*) ; 

int FUNC3(struct uvc_video_queue *queue, struct v4l2_buffer *buf)
{
	int ret;

	FUNC0(&queue->mutex);
	ret = FUNC2(&queue->queue, buf);
	FUNC1(&queue->mutex);

	return ret;
}