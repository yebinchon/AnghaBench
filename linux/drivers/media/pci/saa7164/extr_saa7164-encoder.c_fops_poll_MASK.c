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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct saa7164_port {TYPE_1__ list_buf_used; int /*<<< orphan*/  v4l_reader_count; scalar_t__ last_poll_msecs_diff; int /*<<< orphan*/  poll_interval; scalar_t__ last_poll_msecs; } ;
struct saa7164_encoder_fh {int /*<<< orphan*/  v4l_reading; struct saa7164_port* port; } ;
struct file {scalar_t__ private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct saa7164_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7164_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC9 (struct file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC10(struct file *file, poll_table *wait)
{
	__poll_t req_events = FUNC5(wait);
	struct saa7164_encoder_fh *fh =
		(struct saa7164_encoder_fh *)file->private_data;
	struct saa7164_port *port = fh->port;
	__poll_t mask = FUNC9(file, wait);

	port->last_poll_msecs_diff = port->last_poll_msecs;
	port->last_poll_msecs = FUNC2(jiffies);
	port->last_poll_msecs_diff = port->last_poll_msecs -
		port->last_poll_msecs_diff;

	FUNC8(&port->poll_interval,
		port->last_poll_msecs_diff);

	if (!(req_events & (EPOLLIN | EPOLLRDNORM)))
		return mask;

	if (FUNC0(&fh->v4l_reading, 0, 1) == 0) {
		if (FUNC1(&port->v4l_reader_count) == 1) {
			if (FUNC6(port) < 0)
				return mask | EPOLLERR;
			FUNC7(port);
			FUNC4(200);
		}
	}

	/* Pull the first buffer from the used list */
	if (!FUNC3(&port->list_buf_used.list))
		mask |= EPOLLIN | EPOLLRDNORM;

	return mask;
}