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
typedef  void* u64 ;
struct scifmsg {void** payload; int /*<<< orphan*/  uop; int /*<<< orphan*/  src; } ;
struct scif_fence_info {void* state; int /*<<< orphan*/  comp; } ;
struct scif_endpt {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  remote_dev; void* remote_ep; int /*<<< orphan*/  port; } ;
typedef  scalar_t__ scif_epd_t ;
typedef  void* off_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* OP_IN_PROGRESS ; 
 scalar_t__ SCIFEP_CONNECTED ; 
 int SCIF_SIGNAL_LOCAL ; 
 int SCIF_SIGNAL_REMOTE ; 
 int /*<<< orphan*/  SCIF_SIG_LOCAL ; 
 int /*<<< orphan*/  SCIF_SIG_REMOTE ; 
 int FUNC0 (struct scif_endpt*,struct scif_fence_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scif_fence_info*) ; 
 struct scif_fence_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct scifmsg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(scif_epd_t epd, off_t roff, u64 rval,
				  off_t loff, u64 lval, int flags)
{
	int err = 0;
	struct scifmsg msg;
	struct scif_fence_info *fence_req;
	struct scif_endpt *ep = (struct scif_endpt *)epd;

	fence_req = FUNC3(sizeof(*fence_req), GFP_KERNEL);
	if (!fence_req) {
		err = -ENOMEM;
		goto error;
	}

	fence_req->state = OP_IN_PROGRESS;
	FUNC1(&fence_req->comp);
	msg.src = ep->port;
	if (flags & SCIF_SIGNAL_LOCAL) {
		msg.uop = SCIF_SIG_LOCAL;
		msg.payload[0] = ep->remote_ep;
		msg.payload[1] = roff;
		msg.payload[2] = rval;
		msg.payload[3] = (u64)fence_req;
		FUNC5(&ep->lock);
		if (ep->state == SCIFEP_CONNECTED)
			err = FUNC4(ep->remote_dev, &msg);
		else
			err = -ENOTCONN;
		FUNC6(&ep->lock);
		if (err)
			goto error_free;
		err = FUNC0(ep, fence_req);
		if (err)
			goto error_free;
	}
	fence_req->state = OP_IN_PROGRESS;

	if (flags & SCIF_SIGNAL_REMOTE) {
		msg.uop = SCIF_SIG_REMOTE;
		msg.payload[0] = ep->remote_ep;
		msg.payload[1] = loff;
		msg.payload[2] = lval;
		msg.payload[3] = (u64)fence_req;
		FUNC5(&ep->lock);
		if (ep->state == SCIFEP_CONNECTED)
			err = FUNC4(ep->remote_dev, &msg);
		else
			err = -ENOTCONN;
		FUNC6(&ep->lock);
		if (err)
			goto error_free;
		err = FUNC0(ep, fence_req);
	}
error_free:
	FUNC2(fence_req);
error:
	return err;
}