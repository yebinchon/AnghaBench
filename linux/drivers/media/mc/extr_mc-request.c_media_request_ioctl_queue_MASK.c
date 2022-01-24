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
struct media_request {scalar_t__ state; int /*<<< orphan*/  debug_str; int /*<<< orphan*/  lock; struct media_device* mdev; } ;
struct media_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  req_queue_mutex; TYPE_1__* ops; } ;
typedef  enum media_request_state { ____Placeholder_media_request_state } media_request_state ;
struct TYPE_2__ {int (* req_validate ) (struct media_request*) ;int /*<<< orphan*/  (* req_queue ) (struct media_request*) ;} ;

/* Variables and functions */
 long EBUSY ; 
 scalar_t__ MEDIA_REQUEST_STATE_IDLE ; 
 scalar_t__ MEDIA_REQUEST_STATE_QUEUED ; 
 int MEDIA_REQUEST_STATE_VALIDATING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct media_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct media_request*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (struct media_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct media_request*) ; 

__attribute__((used)) static long FUNC10(struct media_request *req)
{
	struct media_device *mdev = req->mdev;
	enum media_request_state state;
	unsigned long flags;
	int ret;

	FUNC0(mdev->dev, "request: queue %s\n", req->debug_str);

	/*
	 * Ensure the request that is validated will be the one that gets queued
	 * next by serialising the queueing process. This mutex is also used
	 * to serialize with canceling a vb2 queue and with setting values such
	 * as controls in a request.
	 */
	FUNC4(&mdev->req_queue_mutex);

	FUNC1(req);

	FUNC6(&req->lock, flags);
	if (req->state == MEDIA_REQUEST_STATE_IDLE)
		req->state = MEDIA_REQUEST_STATE_VALIDATING;
	state = req->state;
	FUNC7(&req->lock, flags);
	if (state != MEDIA_REQUEST_STATE_VALIDATING) {
		FUNC0(mdev->dev,
			"request: unable to queue %s, request in state %s\n",
			req->debug_str, FUNC3(state));
		FUNC2(req);
		FUNC5(&mdev->req_queue_mutex);
		return -EBUSY;
	}

	ret = mdev->ops->req_validate(req);

	/*
	 * If the req_validate was successful, then we mark the state as QUEUED
	 * and call req_queue. The reason we set the state first is that this
	 * allows req_queue to unbind or complete the queued objects in case
	 * they are immediately 'consumed'. State changes from QUEUED to another
	 * state can only happen if either the driver changes the state or if
	 * the user cancels the vb2 queue. The driver can only change the state
	 * after each object is queued through the req_queue op (and note that
	 * that op cannot fail), so setting the state to QUEUED up front is
	 * safe.
	 *
	 * The other reason for changing the state is if the vb2 queue is
	 * canceled, and that uses the req_queue_mutex which is still locked
	 * while req_queue is called, so that's safe as well.
	 */
	FUNC6(&req->lock, flags);
	req->state = ret ? MEDIA_REQUEST_STATE_IDLE
			 : MEDIA_REQUEST_STATE_QUEUED;
	FUNC7(&req->lock, flags);

	if (!ret)
		mdev->ops->req_queue(req);

	FUNC5(&mdev->req_queue_mutex);

	if (ret) {
		FUNC0(mdev->dev, "request: can't queue %s (%d)\n",
			req->debug_str, ret);
		FUNC2(req);
	}

	return ret;
}