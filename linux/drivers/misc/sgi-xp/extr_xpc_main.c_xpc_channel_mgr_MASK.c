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
struct TYPE_2__ {scalar_t__ all_flags; } ;
struct xpc_partition {scalar_t__ act_state; int /*<<< orphan*/  channel_mgr_requests; int /*<<< orphan*/  nchannels_active; TYPE_1__ chctl; int /*<<< orphan*/  channel_mgr_wq; } ;

/* Variables and functions */
 scalar_t__ XPC_P_AS_DEACTIVATING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC5 (struct xpc_partition*) ; 

__attribute__((used)) static void
FUNC6(struct xpc_partition *part)
{
	while (part->act_state != XPC_P_AS_DEACTIVATING ||
	       FUNC1(&part->nchannels_active) > 0 ||
	       !FUNC4(part)) {

		FUNC5(part);

		/*
		 * Wait until we've been requested to activate kthreads or
		 * all of the channel's message queues have been torn down or
		 * a signal is pending.
		 *
		 * The channel_mgr_requests is set to 1 after being awakened,
		 * This is done to prevent the channel mgr from making one pass
		 * through the loop for each request, since he will
		 * be servicing all the requests in one pass. The reason it's
		 * set to 1 instead of 0 is so that other kthreads will know
		 * that the channel mgr is running and won't bother trying to
		 * wake him up.
		 */
		FUNC0(&part->channel_mgr_requests);
		(void)FUNC3(part->channel_mgr_wq,
				(FUNC1(&part->channel_mgr_requests) > 0 ||
				 part->chctl.all_flags != 0 ||
				 (part->act_state == XPC_P_AS_DEACTIVATING &&
				 FUNC1(&part->nchannels_active) == 0 &&
				 FUNC4(part))));
		FUNC2(&part->channel_mgr_requests, 1);
	}
}