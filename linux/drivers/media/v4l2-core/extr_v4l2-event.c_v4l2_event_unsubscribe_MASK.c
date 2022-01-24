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
struct v4l2_subscribed_event {TYPE_2__* ops; } ;
struct v4l2_fh {int /*<<< orphan*/  subscribe_lock; TYPE_1__* vdev; } ;
struct v4l2_event_subscription {scalar_t__ type; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* del ) (struct v4l2_subscribed_event*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  fh_lock; } ;

/* Variables and functions */
 scalar_t__ V4L2_EVENT_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subscribed_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subscribed_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subscribed_event*) ; 
 struct v4l2_subscribed_event* FUNC7 (struct v4l2_fh*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_fh*) ; 

int FUNC9(struct v4l2_fh *fh,
			   const struct v4l2_event_subscription *sub)
{
	struct v4l2_subscribed_event *sev;
	unsigned long flags;

	if (sub->type == V4L2_EVENT_ALL) {
		FUNC8(fh);
		return 0;
	}

	FUNC2(&fh->subscribe_lock);

	FUNC4(&fh->vdev->fh_lock, flags);

	sev = FUNC7(fh, sub->type, sub->id);
	if (sev != NULL)
		FUNC0(sev);

	FUNC5(&fh->vdev->fh_lock, flags);

	if (sev && sev->ops && sev->ops->del)
		sev->ops->del(sev);

	FUNC3(&fh->subscribe_lock);

	FUNC1(sev);

	return 0;
}