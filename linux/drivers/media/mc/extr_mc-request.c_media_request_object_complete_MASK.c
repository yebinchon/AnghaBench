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
struct media_request_object {int completed; struct media_request* req; } ;
struct media_request {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  num_incomplete_objects; } ;

/* Variables and functions */
 scalar_t__ MEDIA_REQUEST_STATE_COMPLETE ; 
 scalar_t__ MEDIA_REQUEST_STATE_QUEUED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct media_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct media_request_object *obj)
{
	struct media_request *req = obj->req;
	unsigned long flags;
	bool completed = false;

	FUNC2(&req->lock, flags);
	if (obj->completed)
		goto unlock;
	obj->completed = true;
	if (FUNC0(!req->num_incomplete_objects) ||
	    FUNC0(req->state != MEDIA_REQUEST_STATE_QUEUED))
		goto unlock;

	if (!--req->num_incomplete_objects) {
		req->state = MEDIA_REQUEST_STATE_COMPLETE;
		FUNC4(&req->poll_wait);
		completed = true;
	}
unlock:
	FUNC3(&req->lock, flags);
	if (completed)
		FUNC1(req);
}