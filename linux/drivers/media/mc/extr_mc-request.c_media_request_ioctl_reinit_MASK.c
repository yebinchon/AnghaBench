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
struct media_request {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  debug_str; scalar_t__ access_count; struct media_device* mdev; } ;
struct media_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 long EBUSY ; 
 scalar_t__ MEDIA_REQUEST_STATE_CLEANING ; 
 scalar_t__ MEDIA_REQUEST_STATE_COMPLETE ; 
 scalar_t__ MEDIA_REQUEST_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct media_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static long FUNC4(struct media_request *req)
{
	struct media_device *mdev = req->mdev;
	unsigned long flags;

	FUNC2(&req->lock, flags);
	if (req->state != MEDIA_REQUEST_STATE_IDLE &&
	    req->state != MEDIA_REQUEST_STATE_COMPLETE) {
		FUNC0(mdev->dev,
			"request: %s not in idle or complete state, cannot reinit\n",
			req->debug_str);
		FUNC3(&req->lock, flags);
		return -EBUSY;
	}
	if (req->access_count) {
		FUNC0(mdev->dev,
			"request: %s is being accessed, cannot reinit\n",
			req->debug_str);
		FUNC3(&req->lock, flags);
		return -EBUSY;
	}
	req->state = MEDIA_REQUEST_STATE_CLEANING;
	FUNC3(&req->lock, flags);

	FUNC1(req);

	FUNC2(&req->lock, flags);
	req->state = MEDIA_REQUEST_STATE_IDLE;
	FUNC3(&req->lock, flags);

	return 0;
}