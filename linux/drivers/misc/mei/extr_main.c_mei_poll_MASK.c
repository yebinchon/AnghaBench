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
struct mei_device {scalar_t__ dev_state; scalar_t__ tx_queue_limit; int /*<<< orphan*/  device_lock; } ;
struct mei_cl {scalar_t__ tx_cb_queued; int /*<<< orphan*/  tx_wait; int /*<<< orphan*/  rd_completed; int /*<<< orphan*/  rx_wait; scalar_t__ notify_ev; int /*<<< orphan*/  ev_wait; int /*<<< orphan*/  notify_en; struct mei_device* dev; } ;
struct file {struct mei_cl* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLPRI ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 scalar_t__ MEI_DEV_ENABLED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_cl*,int /*<<< orphan*/ ,struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC9(struct file *file, poll_table *wait)
{
	__poll_t req_events = FUNC7(wait);
	struct mei_cl *cl = file->private_data;
	struct mei_device *dev;
	__poll_t mask = 0;
	bool notify_en;

	if (FUNC0(!cl || !cl->dev))
		return EPOLLERR;

	dev = cl->dev;

	FUNC5(&dev->device_lock);

	notify_en = cl->notify_en && (req_events & EPOLLPRI);

	if (dev->dev_state != MEI_DEV_ENABLED ||
	    !FUNC2(cl)) {
		mask = EPOLLERR;
		goto out;
	}

	if (notify_en) {
		FUNC8(file, &cl->ev_wait, wait);
		if (cl->notify_ev)
			mask |= EPOLLPRI;
	}

	if (req_events & (EPOLLIN | EPOLLRDNORM)) {
		FUNC8(file, &cl->rx_wait, wait);

		if (!FUNC1(&cl->rd_completed))
			mask |= EPOLLIN | EPOLLRDNORM;
		else
			FUNC4(cl, FUNC3(cl), file);
	}

	if (req_events & (EPOLLOUT | EPOLLWRNORM)) {
		FUNC8(file, &cl->tx_wait, wait);
		if (cl->tx_cb_queued < dev->tx_queue_limit)
			mask |= EPOLLOUT | EPOLLWRNORM;
	}

out:
	FUNC6(&dev->device_lock);
	return mask;
}