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
struct uvc_video_queue {int /*<<< orphan*/  mutex; int /*<<< orphan*/  queue; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct file*,int /*<<< orphan*/ *) ; 

__poll_t FUNC3(struct uvc_video_queue *queue, struct file *file,
			    poll_table *wait)
{
	__poll_t ret;

	FUNC0(&queue->mutex);
	ret = FUNC2(&queue->queue, file, wait);
	FUNC1(&queue->mutex);

	return ret;
}