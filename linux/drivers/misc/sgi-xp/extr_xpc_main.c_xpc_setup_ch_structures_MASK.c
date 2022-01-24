#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ all_flags; } ;
struct xpc_partition {int nchannels; struct xpc_channel* channels; int /*<<< orphan*/ * remote_openclose_args; struct xpc_channel* remote_openclose_args_base; int /*<<< orphan*/  setup_state; int /*<<< orphan*/  nchannels_engaged; int /*<<< orphan*/  nchannels_active; int /*<<< orphan*/  channel_mgr_wq; int /*<<< orphan*/  channel_mgr_requests; int /*<<< orphan*/  chctl_lock; TYPE_1__ chctl; } ;
struct xpc_channel {short partid; int number; int /*<<< orphan*/  idle_wq; int /*<<< orphan*/  msg_allocate_wq; int /*<<< orphan*/  n_on_msg_allocate_wq; int /*<<< orphan*/  wdisconnect_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  n_to_notify; int /*<<< orphan*/  references; int /*<<< orphan*/  kthreads_active; int /*<<< orphan*/  kthreads_idle; int /*<<< orphan*/  kthreads_assigned; int /*<<< orphan*/  flags; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_4__ {int (* setup_ch_structures ) (struct xpc_partition*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  XPC_C_DISCONNECTED ; 
 int XPC_MAX_NCHANNELS ; 
 int /*<<< orphan*/  XPC_OPENCLOSE_ARGS_SIZE ; 
 short FUNC1 (struct xpc_partition*) ; 
 int /*<<< orphan*/  XPC_P_SS_SETUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct xpc_channel* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct xpc_partition*) ; 
 int xpNoMemory ; 
 int xpSuccess ; 
 TYPE_2__ xpc_arch_ops ; 
 int /*<<< orphan*/  xpc_chan ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xpc_channel**) ; 

__attribute__((used)) static enum xp_retval
FUNC11(struct xpc_partition *part)
{
	enum xp_retval ret;
	int ch_number;
	struct xpc_channel *ch;
	short partid = FUNC1(part);

	/*
	 * Allocate all of the channel structures as a contiguous chunk of
	 * memory.
	 */
	FUNC0(part->channels != NULL);
	part->channels = FUNC6(XPC_MAX_NCHANNELS,
				 sizeof(struct xpc_channel),
				 GFP_KERNEL);
	if (part->channels == NULL) {
		FUNC3(xpc_chan, "can't get memory for channels\n");
		return xpNoMemory;
	}

	/* allocate the remote open and close args */

	part->remote_openclose_args =
	    FUNC10(XPC_OPENCLOSE_ARGS_SIZE,
					  GFP_KERNEL, &part->
					  remote_openclose_args_base);
	if (part->remote_openclose_args == NULL) {
		FUNC3(xpc_chan, "can't get memory for remote connect args\n");
		ret = xpNoMemory;
		goto out_1;
	}

	part->chctl.all_flags = 0;
	FUNC8(&part->chctl_lock);

	FUNC2(&part->channel_mgr_requests, 1);
	FUNC5(&part->channel_mgr_wq);

	part->nchannels = XPC_MAX_NCHANNELS;

	FUNC2(&part->nchannels_active, 0);
	FUNC2(&part->nchannels_engaged, 0);

	for (ch_number = 0; ch_number < part->nchannels; ch_number++) {
		ch = &part->channels[ch_number];

		ch->partid = partid;
		ch->number = ch_number;
		ch->flags = XPC_C_DISCONNECTED;

		FUNC2(&ch->kthreads_assigned, 0);
		FUNC2(&ch->kthreads_idle, 0);
		FUNC2(&ch->kthreads_active, 0);

		FUNC2(&ch->references, 0);
		FUNC2(&ch->n_to_notify, 0);

		FUNC8(&ch->lock);
		FUNC4(&ch->wdisconnect_wait);

		FUNC2(&ch->n_on_msg_allocate_wq, 0);
		FUNC5(&ch->msg_allocate_wq);
		FUNC5(&ch->idle_wq);
	}

	ret = xpc_arch_ops.setup_ch_structures(part);
	if (ret != xpSuccess)
		goto out_2;

	/*
	 * With the setting of the partition setup_state to XPC_P_SS_SETUP,
	 * we're declaring that this partition is ready to go.
	 */
	part->setup_state = XPC_P_SS_SETUP;

	return xpSuccess;

	/* setup of ch structures failed */
out_2:
	FUNC7(part->remote_openclose_args_base);
	part->remote_openclose_args = NULL;
out_1:
	FUNC7(part->channels);
	part->channels = NULL;
	return ret;
}