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
struct media_request_object {TYPE_1__* ops; int /*<<< orphan*/  completed; struct media_request* req; int /*<<< orphan*/  list; } ;
struct media_request {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  num_incomplete_objects; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unbind ) (struct media_request_object*) ;} ;

/* Variables and functions */
 scalar_t__ MEDIA_REQUEST_STATE_CLEANING ; 
 scalar_t__ MEDIA_REQUEST_STATE_COMPLETE ; 
 scalar_t__ MEDIA_REQUEST_STATE_QUEUED ; 
 scalar_t__ MEDIA_REQUEST_STATE_VALIDATING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct media_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct media_request_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct media_request_object *obj)
{
	struct media_request *req = obj->req;
	unsigned long flags;
	bool completed = false;

	if (FUNC0(!req))
		return;

	FUNC3(&req->lock, flags);
	FUNC1(&obj->list);
	obj->req = NULL;

	if (req->state == MEDIA_REQUEST_STATE_COMPLETE)
		goto unlock;

	if (FUNC0(req->state == MEDIA_REQUEST_STATE_VALIDATING))
		goto unlock;

	if (req->state == MEDIA_REQUEST_STATE_CLEANING) {
		if (!obj->completed)
			req->num_incomplete_objects--;
		goto unlock;
	}

	if (FUNC0(!req->num_incomplete_objects))
		goto unlock;

	req->num_incomplete_objects--;
	if (req->state == MEDIA_REQUEST_STATE_QUEUED &&
	    !req->num_incomplete_objects) {
		req->state = MEDIA_REQUEST_STATE_COMPLETE;
		completed = true;
		FUNC6(&req->poll_wait);
	}

unlock:
	FUNC4(&req->lock, flags);
	if (obj->ops->unbind)
		obj->ops->unbind(obj);
	if (completed)
		FUNC2(req);
}