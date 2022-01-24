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
struct poll_table_struct {int dummy; } ;
struct media_request {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  poll_wait; } ;
struct file {struct media_request* private_data; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLPRI ; 
 scalar_t__ MEDIA_REQUEST_STATE_COMPLETE ; 
 scalar_t__ MEDIA_REQUEST_STATE_QUEUED ; 
 int FUNC0 (struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static __poll_t FUNC4(struct file *filp,
				   struct poll_table_struct *wait)
{
	struct media_request *req = filp->private_data;
	unsigned long flags;
	__poll_t ret = 0;

	if (!(FUNC0(wait) & EPOLLPRI))
		return 0;

	FUNC1(filp, &req->poll_wait, wait);
	FUNC2(&req->lock, flags);
	if (req->state == MEDIA_REQUEST_STATE_COMPLETE) {
		ret = EPOLLPRI;
		goto unlock;
	}
	if (req->state != MEDIA_REQUEST_STATE_QUEUED) {
		ret = EPOLLERR;
		goto unlock;
	}

unlock:
	FUNC3(&req->lock, flags);
	return ret;
}