#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_buffer {int dummy; } ;
struct isp_video_fh {int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {TYPE_1__* v4l2_dev; } ;
struct isp_video {int /*<<< orphan*/  queue_lock; TYPE_2__ video; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct isp_video_fh* FUNC2 (void*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct v4l2_buffer*) ; 
 struct isp_video* FUNC4 (struct file*) ; 

__attribute__((used)) static int
FUNC5(struct file *file, void *fh, struct v4l2_buffer *b)
{
	struct isp_video_fh *vfh = FUNC2(fh);
	struct isp_video *video = FUNC4(file);
	int ret;

	FUNC0(&video->queue_lock);
	ret = FUNC3(&vfh->queue, video->video.v4l2_dev->mdev, b);
	FUNC1(&video->queue_lock);

	return ret;
}