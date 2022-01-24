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
struct video_device {scalar_t__ ctrl_handler; int /*<<< orphan*/  flags; } ;
struct v4l2_ioctl_ops {int (* vidioc_s_ctrl ) (struct file*,void*,struct v4l2_control*) ;int (* vidioc_s_ext_ctrls ) (struct file*,void*,struct v4l2_ext_controls*) ;} ;
struct v4l2_fh {scalar_t__ ctrl_handler; } ;
struct v4l2_ext_controls {int count; struct v4l2_ext_control* controls; int /*<<< orphan*/  which; } ;
struct v4l2_ext_control {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;
struct v4l2_control {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_FL_USES_V4L2_FH ; 
 scalar_t__ FUNC1 (struct v4l2_ext_controls*,int) ; 
 int FUNC2 (struct file*,void*,struct v4l2_control*) ; 
 int FUNC3 (struct file*,void*,struct v4l2_ext_controls*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct v4l2_fh*,scalar_t__,struct v4l2_control*) ; 
 struct video_device* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(const struct v4l2_ioctl_ops *ops,
				struct file *file, void *fh, void *arg)
{
	struct video_device *vfd = FUNC6(file);
	struct v4l2_control *p = arg;
	struct v4l2_fh *vfh =
		FUNC4(V4L2_FL_USES_V4L2_FH, &vfd->flags) ? fh : NULL;
	struct v4l2_ext_controls ctrls;
	struct v4l2_ext_control ctrl;

	if (vfh && vfh->ctrl_handler)
		return FUNC5(vfh, vfh->ctrl_handler, p);
	if (vfd->ctrl_handler)
		return FUNC5(NULL, vfd->ctrl_handler, p);
	if (ops->vidioc_s_ctrl)
		return ops->vidioc_s_ctrl(file, fh, p);
	if (ops->vidioc_s_ext_ctrls == NULL)
		return -ENOTTY;

	ctrls.which = FUNC0(p->id);
	ctrls.count = 1;
	ctrls.controls = &ctrl;
	ctrl.id = p->id;
	ctrl.value = p->value;
	if (FUNC1(&ctrls, 1))
		return ops->vidioc_s_ext_ctrls(file, fh, &ctrls);
	return -EINVAL;
}