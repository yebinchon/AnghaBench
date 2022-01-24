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
struct file {struct dvb_device* private_data; } ;
struct dvb_ringbuffer {int /*<<< orphan*/  queue; } ;
struct dvb_device {struct av7110* priv; } ;
struct av7110 {struct dvb_ringbuffer ci_wbuffer; struct dvb_ringbuffer ci_rbuffer; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct av7110*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_ringbuffer*) ; 
 int FUNC2 (struct dvb_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC4 (struct file *file, poll_table *wait)
{
	struct dvb_device *dvbdev = file->private_data;
	struct av7110 *av7110 = dvbdev->priv;
	struct dvb_ringbuffer *rbuf = &av7110->ci_rbuffer;
	struct dvb_ringbuffer *wbuf = &av7110->ci_wbuffer;
	__poll_t mask = 0;

	FUNC0(8, "av7110:%p\n",av7110);

	FUNC3(file, &rbuf->queue, wait);
	FUNC3(file, &wbuf->queue, wait);

	if (!FUNC1(rbuf))
		mask |= (EPOLLIN | EPOLLRDNORM);

	if (FUNC2(wbuf) > 1024)
		mask |= (EPOLLOUT | EPOLLWRNORM);

	return mask;
}