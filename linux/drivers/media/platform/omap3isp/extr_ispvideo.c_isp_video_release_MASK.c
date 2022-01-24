#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_fh {int dummy; } ;
struct isp_video_fh {int /*<<< orphan*/  queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct isp_video {int /*<<< orphan*/  isp; TYPE_1__ video; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  type; } ;
struct file {struct v4l2_fh* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*,struct v4l2_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_video_fh*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct isp_video_fh* FUNC5 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct isp_video* FUNC10 (struct file*) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct isp_video *video = FUNC10(file);
	struct v4l2_fh *vfh = file->private_data;
	struct isp_video_fh *handle = FUNC5(vfh);

	/* Disable streaming and free the buffers queue resources. */
	FUNC0(file, vfh, video->type);

	FUNC2(&video->queue_lock);
	FUNC9(&handle->queue);
	FUNC3(&video->queue_lock);

	FUNC8(&video->video.entity, 0);

	/* Release the file handle. */
	FUNC6(vfh);
	FUNC7(vfh);
	FUNC1(handle);
	file->private_data = NULL;

	FUNC4(video->isp);

	return 0;
}