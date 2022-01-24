#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  capturemode; scalar_t__ extendedmode; int /*<<< orphan*/  reserved; } ;
struct TYPE_4__ {int /*<<< orphan*/  outputmode; scalar_t__ extendedmode; int /*<<< orphan*/  reserved; } ;
struct TYPE_6__ {TYPE_2__ capture; TYPE_1__ output; } ;
struct v4l2_streamparm {TYPE_3__ parm; int /*<<< orphan*/  type; } ;
struct v4l2_ioctl_ops {int (* vidioc_s_parm ) (struct file*,void*,struct v4l2_streamparm*) ;} ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_MODE_HIGHQUALITY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct file*,void*,struct v4l2_streamparm*) ; 

__attribute__((used)) static int FUNC4(const struct v4l2_ioctl_ops *ops,
				struct file *file, void *fh, void *arg)
{
	struct v4l2_streamparm *p = arg;
	int ret = FUNC1(file, p->type);

	if (ret)
		return ret;

	/* Note: extendedmode is never used in drivers */
	if (FUNC0(p->type)) {
		FUNC2(p->parm.output.reserved, 0,
		       sizeof(p->parm.output.reserved));
		p->parm.output.extendedmode = 0;
		p->parm.output.outputmode &= V4L2_MODE_HIGHQUALITY;
	} else {
		FUNC2(p->parm.capture.reserved, 0,
		       sizeof(p->parm.capture.reserved));
		p->parm.capture.extendedmode = 0;
		p->parm.capture.capturemode &= V4L2_MODE_HIGHQUALITY;
	}
	return ops->vidioc_s_parm(file, fh, p);
}