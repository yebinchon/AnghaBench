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
struct isp_video_fh {int /*<<< orphan*/  queue; } ;
struct isp_video {int /*<<< orphan*/  queue_lock; } ;
struct file {int /*<<< orphan*/  private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct isp_video_fh* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct file*,int /*<<< orphan*/ *) ; 
 struct isp_video* FUNC4 (struct file*) ; 

__attribute__((used)) static __poll_t FUNC5(struct file *file, poll_table *wait)
{
	struct isp_video_fh *vfh = FUNC2(file->private_data);
	struct isp_video *video = FUNC4(file);
	__poll_t ret;

	FUNC0(&video->queue_lock);
	ret = FUNC3(&vfh->queue, file, wait);
	FUNC1(&video->queue_lock);

	return ret;
}