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
typedef  int /*<<< orphan*/  u32 ;
struct video_device {int /*<<< orphan*/  prio; int /*<<< orphan*/  flags; } ;
struct v4l2_ioctl_ops {int dummy; } ;
struct v4l2_fh {int /*<<< orphan*/  prio; } ;
struct file {struct v4l2_fh* private_data; } ;

/* Variables and functions */
 int ENOTTY ; 
 int /*<<< orphan*/  V4L2_FL_USES_V4L2_FH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct video_device* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(const struct v4l2_ioctl_ops *ops,
				struct file *file, void *fh, void *arg)
{
	struct video_device *vfd;
	struct v4l2_fh *vfh;
	u32 *p = arg;

	vfd = FUNC2(file);
	if (!FUNC0(V4L2_FL_USES_V4L2_FH, &vfd->flags))
		return -ENOTTY;
	vfh = file->private_data;
	return FUNC1(vfd->prio, &vfh->prio, *p);
}