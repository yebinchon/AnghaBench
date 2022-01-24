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
struct xpc_channel {int flags; int /*<<< orphan*/  partid; int /*<<< orphan*/  number; int /*<<< orphan*/  lock; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_2__ {int (* setup_msg_structures ) (struct xpc_channel*) ;int /*<<< orphan*/  (* send_chctl_opencomplete ) (struct xpc_channel*,unsigned long*) ;int /*<<< orphan*/  (* send_chctl_openreply ) (struct xpc_channel*,unsigned long*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XPC_C_CONNECTED ; 
 int XPC_C_CONNECTING ; 
 int XPC_C_DISCONNECTING ; 
 int XPC_C_OPENCOMPLETE ; 
 int XPC_C_OPENREPLY ; 
 int XPC_C_OPENREQUEST ; 
 int XPC_C_ROPENCOMPLETE ; 
 int XPC_C_ROPENREPLY ; 
 int XPC_C_ROPENREQUEST ; 
 int XPC_C_SETUP ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_channel*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct xpc_channel*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (struct xpc_channel*,unsigned long*) ; 
 int xpSuccess ; 
 TYPE_1__ xpc_arch_ops ; 
 int /*<<< orphan*/  xpc_chan ; 

__attribute__((used)) static void
FUNC9(struct xpc_channel *ch, unsigned long *irq_flags)
{
	enum xp_retval ret;

	FUNC3(&ch->lock);

	if (!(ch->flags & XPC_C_OPENREQUEST) ||
	    !(ch->flags & XPC_C_ROPENREQUEST)) {
		/* nothing more to do for now */
		return;
	}
	FUNC0(!(ch->flags & XPC_C_CONNECTING));

	if (!(ch->flags & XPC_C_SETUP)) {
		FUNC5(&ch->lock, *irq_flags);
		ret = xpc_arch_ops.setup_msg_structures(ch);
		FUNC4(&ch->lock, *irq_flags);

		if (ret != xpSuccess)
			FUNC1(ch, ret, irq_flags);
		else
			ch->flags |= XPC_C_SETUP;

		if (ch->flags & XPC_C_DISCONNECTING)
			return;
	}

	if (!(ch->flags & XPC_C_OPENREPLY)) {
		ch->flags |= XPC_C_OPENREPLY;
		xpc_arch_ops.send_chctl_openreply(ch, irq_flags);
	}

	if (!(ch->flags & XPC_C_ROPENREPLY))
		return;

	if (!(ch->flags & XPC_C_OPENCOMPLETE)) {
		ch->flags |= (XPC_C_OPENCOMPLETE | XPC_C_CONNECTED);
		xpc_arch_ops.send_chctl_opencomplete(ch, irq_flags);
	}

	if (!(ch->flags & XPC_C_ROPENCOMPLETE))
		return;

	FUNC2(xpc_chan, "channel %d to partition %d connected\n",
		 ch->number, ch->partid);

	ch->flags = (XPC_C_CONNECTED | XPC_C_SETUP);	/* clear all else */
}