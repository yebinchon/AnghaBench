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
struct video_device {int /*<<< orphan*/  flags; } ;
struct v4l2_m2m_ctx {int dummy; } ;
struct v4l2_fh {int /*<<< orphan*/  wait; } ;
struct poll_table_struct {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLPRI ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  V4L2_FL_USES_V4L2_FH ; 
 int FUNC0 (struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct v4l2_fh*) ; 
 int FUNC4 (struct file*,struct v4l2_m2m_ctx*,struct poll_table_struct*) ; 
 struct video_device* FUNC5 (struct file*) ; 

__poll_t FUNC6(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
		       struct poll_table_struct *wait)
{
	struct video_device *vfd = FUNC5(file);
	__poll_t req_events = FUNC0(wait);
	__poll_t rc = 0;

	if (req_events & (EPOLLOUT | EPOLLWRNORM | EPOLLIN | EPOLLRDNORM))
		rc = FUNC4(file, m2m_ctx, wait);

	if (FUNC2(V4L2_FL_USES_V4L2_FH, &vfd->flags)) {
		struct v4l2_fh *fh = file->private_data;

		FUNC1(file, &fh->wait, wait);
		if (FUNC3(fh))
			rc |= EPOLLPRI;
	}

	return rc;
}