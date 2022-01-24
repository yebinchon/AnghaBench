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
typedef  int u32 ;
struct xpc_channel {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  msg_allocate_wq; int /*<<< orphan*/  n_on_msg_allocate_wq; int /*<<< orphan*/  idle_wq; int /*<<< orphan*/  kthreads_idle; int /*<<< orphan*/  number; int /*<<< orphan*/  partid; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_2__ {int /*<<< orphan*/  (* send_chctl_closerequest ) (struct xpc_channel*,unsigned long*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XPC_C_CLOSEREQUEST ; 
 int XPC_C_CONNECTED ; 
 int XPC_C_CONNECTEDCALLOUT_MADE ; 
 int XPC_C_CONNECTING ; 
 int XPC_C_DISCONNECTED ; 
 int XPC_C_DISCONNECTING ; 
 int XPC_C_DISCONNECTINGCALLOUT ; 
 int XPC_C_OPENREPLY ; 
 int XPC_C_OPENREQUEST ; 
 int XPC_C_ROPENREPLY ; 
 int XPC_C_ROPENREQUEST ; 
 int XPC_C_WASCONNECTED ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_channel*,int,int const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct xpc_channel*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ xpc_arch_ops ; 
 int /*<<< orphan*/  xpc_chan ; 
 int /*<<< orphan*/  FUNC10 (struct xpc_channel*,int,int) ; 

void
FUNC11(const int line, struct xpc_channel *ch,
		       enum xp_retval reason, unsigned long *irq_flags)
{
	u32 channel_was_connected = (ch->flags & XPC_C_CONNECTED);

	FUNC4(&ch->lock);

	if (ch->flags & (XPC_C_DISCONNECTING | XPC_C_DISCONNECTED))
		return;

	FUNC0(!(ch->flags & (XPC_C_CONNECTING | XPC_C_CONNECTED)));

	FUNC3(xpc_chan, "reason=%d, line=%d, partid=%d, channel=%d\n",
		reason, line, ch->partid, ch->number);

	FUNC1(ch, reason, line);

	ch->flags |= (XPC_C_CLOSEREQUEST | XPC_C_DISCONNECTING);
	/* some of these may not have been set */
	ch->flags &= ~(XPC_C_OPENREQUEST | XPC_C_OPENREPLY |
		       XPC_C_ROPENREQUEST | XPC_C_ROPENREPLY |
		       XPC_C_CONNECTING | XPC_C_CONNECTED);

	xpc_arch_ops.send_chctl_closerequest(ch, irq_flags);

	if (channel_was_connected)
		ch->flags |= XPC_C_WASCONNECTED;

	FUNC6(&ch->lock, *irq_flags);

	/* wake all idle kthreads so they can exit */
	if (FUNC2(&ch->kthreads_idle) > 0) {
		FUNC9(&ch->idle_wq);

	} else if ((ch->flags & XPC_C_CONNECTEDCALLOUT_MADE) &&
		   !(ch->flags & XPC_C_DISCONNECTINGCALLOUT)) {
		/* start a kthread that will do the xpDisconnecting callout */
		FUNC10(ch, 1, 1);
	}

	/* wake those waiting to allocate an entry from the local msg queue */
	if (FUNC2(&ch->n_on_msg_allocate_wq) > 0)
		FUNC8(&ch->msg_allocate_wq);

	FUNC5(&ch->lock, *irq_flags);
}