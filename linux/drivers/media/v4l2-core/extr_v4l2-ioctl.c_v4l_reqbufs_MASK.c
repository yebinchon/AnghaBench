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
struct v4l2_requestbuffers {int /*<<< orphan*/  type; } ;
struct v4l2_ioctl_ops {int (* vidioc_reqbufs ) (struct file*,void*,struct v4l2_requestbuffers*) ;} ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_requestbuffers*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  capabilities ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,void*,struct v4l2_requestbuffers*) ; 

__attribute__((used)) static int FUNC3(const struct v4l2_ioctl_ops *ops,
				struct file *file, void *fh, void *arg)
{
	struct v4l2_requestbuffers *p = arg;
	int ret = FUNC1(file, p->type);

	if (ret)
		return ret;

	FUNC0(p, capabilities);

	return ops->vidioc_reqbufs(file, fh, p);
}