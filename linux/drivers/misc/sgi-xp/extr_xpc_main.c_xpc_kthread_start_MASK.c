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
typedef  size_t u16 ;
struct xpc_partition {int /*<<< orphan*/  nchannels_engaged; struct xpc_channel* channels; } ;
struct xpc_channel {int flags; int /*<<< orphan*/  kthreads_assigned; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int (* n_of_deliverable_payloads ) (struct xpc_channel*) ;int /*<<< orphan*/  (* indicate_partition_disengaged ) (struct xpc_partition*) ;} ;

/* Variables and functions */
 int XPC_C_CONNECTEDCALLOUT ; 
 int XPC_C_CONNECTEDCALLOUT_MADE ; 
 int XPC_C_DISCONNECTING ; 
 int XPC_C_DISCONNECTINGCALLOUT ; 
 int XPC_C_DISCONNECTINGCALLOUT_MADE ; 
 short FUNC0 (void*) ; 
 size_t FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,short,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct xpc_partition*) ; 
 int /*<<< orphan*/  xpDisconnecting ; 
 int /*<<< orphan*/  FUNC7 (struct xpc_channel*,int) ; 
 TYPE_1__ xpc_arch_ops ; 
 int /*<<< orphan*/  xpc_chan ; 
 int /*<<< orphan*/  FUNC8 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC9 (struct xpc_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xpc_partition*,struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC11 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC12 (struct xpc_partition*) ; 
 struct xpc_partition* xpc_partitions ; 

__attribute__((used)) static int
FUNC13(void *args)
{
	short partid = FUNC0(args);
	u16 ch_number = FUNC1(args);
	struct xpc_partition *part = &xpc_partitions[partid];
	struct xpc_channel *ch;
	int n_needed;
	unsigned long irq_flags;
	int (*n_of_deliverable_payloads) (struct xpc_channel *) =
		xpc_arch_ops.n_of_deliverable_payloads;

	FUNC3(xpc_chan, "kthread starting, partid=%d, channel=%d\n",
		partid, ch_number);

	ch = &part->channels[ch_number];

	if (!(ch->flags & XPC_C_DISCONNECTING)) {

		/* let registerer know that connection has been established */

		FUNC4(&ch->lock, irq_flags);
		if (!(ch->flags & XPC_C_CONNECTEDCALLOUT)) {
			ch->flags |= XPC_C_CONNECTEDCALLOUT;
			FUNC5(&ch->lock, irq_flags);

			FUNC8(ch);

			FUNC4(&ch->lock, irq_flags);
			ch->flags |= XPC_C_CONNECTEDCALLOUT_MADE;
			FUNC5(&ch->lock, irq_flags);

			/*
			 * It is possible that while the callout was being
			 * made that the remote partition sent some messages.
			 * If that is the case, we may need to activate
			 * additional kthreads to help deliver them. We only
			 * need one less than total #of messages to deliver.
			 */
			n_needed = n_of_deliverable_payloads(ch) - 1;
			if (n_needed > 0 && !(ch->flags & XPC_C_DISCONNECTING))
				FUNC7(ch, n_needed);

		} else {
			FUNC5(&ch->lock, irq_flags);
		}

		FUNC10(part, ch);
	}

	/* let registerer know that connection is disconnecting */

	FUNC4(&ch->lock, irq_flags);
	if ((ch->flags & XPC_C_CONNECTEDCALLOUT_MADE) &&
	    !(ch->flags & XPC_C_DISCONNECTINGCALLOUT)) {
		ch->flags |= XPC_C_DISCONNECTINGCALLOUT;
		FUNC5(&ch->lock, irq_flags);

		FUNC9(ch, xpDisconnecting);

		FUNC4(&ch->lock, irq_flags);
		ch->flags |= XPC_C_DISCONNECTINGCALLOUT_MADE;
	}
	FUNC5(&ch->lock, irq_flags);

	if (FUNC2(&ch->kthreads_assigned) == 0 &&
	    FUNC2(&part->nchannels_engaged) == 0) {
		xpc_arch_ops.indicate_partition_disengaged(part);
	}

	FUNC11(ch);

	FUNC3(xpc_chan, "kthread exiting, partid=%d, channel=%d\n",
		partid, ch_number);

	FUNC12(part);
	return 0;
}