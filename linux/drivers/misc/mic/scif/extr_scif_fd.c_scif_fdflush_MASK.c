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
struct scif_endpt {scalar_t__ files; int /*<<< orphan*/  lock; } ;
struct file {struct scif_endpt* private_data; } ;
typedef  scalar_t__ fl_owner_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scif_endpt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct file *f, fl_owner_t id)
{
	struct scif_endpt *ep = f->private_data;

	FUNC1(&ep->lock);
	/*
	 * The listening endpoint stashes the open file information before
	 * waiting for incoming connections. The release callback would never be
	 * called if the application closed the endpoint, while waiting for
	 * incoming connections from a separate thread since the file descriptor
	 * reference count is bumped up in the accept IOCTL. Call the flush
	 * routine if the id matches the endpoint open file information so that
	 * the listening endpoint can be woken up and the fd released.
	 */
	if (ep->files == id)
		FUNC0(ep);
	FUNC2(&ep->lock);
	return 0;
}