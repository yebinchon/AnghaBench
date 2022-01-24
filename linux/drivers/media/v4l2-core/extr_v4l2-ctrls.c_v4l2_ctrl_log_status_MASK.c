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
struct video_device {TYPE_1__* v4l2_dev; int /*<<< orphan*/  flags; } ;
struct v4l2_fh {int /*<<< orphan*/  ctrl_handler; } ;
struct file {struct v4l2_fh* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_FL_USES_V4L2_FH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct video_device* FUNC2 (struct file*) ; 

int FUNC3(struct file *file, void *fh)
{
	struct video_device *vfd = FUNC2(file);
	struct v4l2_fh *vfh = file->private_data;

	if (FUNC0(V4L2_FL_USES_V4L2_FH, &vfd->flags) && vfd->v4l2_dev)
		FUNC1(vfh->ctrl_handler,
			vfd->v4l2_dev->name);
	return 0;
}