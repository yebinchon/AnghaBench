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
struct file {struct cx231xx_fh* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  wait; } ;
struct cx231xx_fh {scalar_t__ type; int /*<<< orphan*/  vb_vidq; TYPE_1__ fh; struct cx231xx* dev; } ;
struct cx231xx {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLIN ; 
 int EPOLLPRI ; 
 int EPOLLRDNORM ; 
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int FUNC0 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct cx231xx_fh*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int FUNC8 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC9(struct file *filp, poll_table *wait)
{
	__poll_t req_events = FUNC3(wait);
	struct cx231xx_fh *fh = filp->private_data;
	struct cx231xx *dev = fh->dev;
	__poll_t res = 0;
	int rc;

	rc = FUNC0(dev);
	if (rc < 0)
		return EPOLLERR;

	rc = FUNC5(fh);

	if (FUNC6(rc < 0))
		return EPOLLERR;

	if (FUNC7(&fh->fh))
		res |= EPOLLPRI;
	else
		FUNC4(filp, &fh->fh.wait, wait);

	if (!(req_events & (EPOLLIN | EPOLLRDNORM)))
		return res;

	if ((V4L2_BUF_TYPE_VIDEO_CAPTURE == fh->type) ||
	    (V4L2_BUF_TYPE_VBI_CAPTURE == fh->type)) {
		FUNC1(&dev->lock);
		res |= FUNC8(filp, &fh->vb_vidq, wait);
		FUNC2(&dev->lock);
		return res;
	}
	return res | EPOLLERR;
}