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
struct v4l2_requestbuffers {int dummy; } ;
struct isp_video_fh {int /*<<< orphan*/  queue; } ;
struct isp_video {int /*<<< orphan*/  queue_lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct isp_video_fh* FUNC2 (void*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct v4l2_requestbuffers*) ; 
 struct isp_video* FUNC4 (struct file*) ; 

__attribute__((used)) static int
FUNC5(struct file *file, void *fh, struct v4l2_requestbuffers *rb)
{
	struct isp_video_fh *vfh = FUNC2(fh);
	struct isp_video *video = FUNC4(file);
	int ret;

	FUNC0(&video->queue_lock);
	ret = FUNC3(&vfh->queue, rb);
	FUNC1(&video->queue_lock);

	return ret;
}