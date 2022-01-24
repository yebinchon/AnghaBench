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
struct hdpvr_device {scalar_t__ status; int /*<<< orphan*/  wait_data; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  owner; int /*<<< orphan*/  v4l2_dev; } ;
struct hdpvr_buffer {scalar_t__ status; } ;
struct file {int /*<<< orphan*/  private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 scalar_t__ BUFSTAT_READY ; 
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  MSG_BUFFER ; 
 scalar_t__ STATUS_IDLE ; 
 int /*<<< orphan*/  hdpvr_debug ; 
 struct hdpvr_buffer* FUNC0 (struct hdpvr_device*) ; 
 scalar_t__ FUNC1 (struct hdpvr_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct hdpvr_device* FUNC9 (struct file*) ; 

__attribute__((used)) static __poll_t FUNC10(struct file *filp, poll_table *wait)
{
	__poll_t req_events = FUNC4(wait);
	struct hdpvr_buffer *buf = NULL;
	struct hdpvr_device *dev = FUNC9(filp);
	__poll_t mask = FUNC7(filp, wait);

	if (!(req_events & (EPOLLIN | EPOLLRDNORM)))
		return mask;

	FUNC2(&dev->io_mutex);

	if (dev->status == STATUS_IDLE) {
		if (FUNC1(dev)) {
			FUNC8(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
				 "start_streaming failed\n");
			dev->status = STATUS_IDLE;
		} else {
			dev->owner = filp->private_data;
		}

		FUNC6();
	}
	FUNC3(&dev->io_mutex);

	buf = FUNC0(dev);
	/* only wait if no data is available */
	if (!buf || buf->status != BUFSTAT_READY) {
		FUNC5(filp, &dev->wait_data, wait);
		buf = FUNC0(dev);
	}
	if (buf && buf->status == BUFSTAT_READY)
		mask |= EPOLLIN | EPOLLRDNORM;

	return mask;
}