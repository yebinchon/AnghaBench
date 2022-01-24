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
struct TYPE_2__ {struct v4l2_fh* owner; } ;
struct vsp1_video {int /*<<< orphan*/  vsp1; int /*<<< orphan*/  lock; TYPE_1__ queue; } ;
struct v4l2_fh {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct vsp1_video* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct file *file)
{
	struct vsp1_video *video = FUNC4(file);
	struct v4l2_fh *vfh = file->private_data;

	FUNC0(&video->lock);
	if (video->queue.owner == vfh) {
		FUNC3(&video->queue);
		video->queue.owner = NULL;
	}
	FUNC1(&video->lock);

	FUNC5(video->vsp1);

	FUNC2(file);

	file->private_data = NULL;

	return 0;
}