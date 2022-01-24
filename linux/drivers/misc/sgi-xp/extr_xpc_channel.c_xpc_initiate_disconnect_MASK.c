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
struct xpc_partition {struct xpc_channel* channels; } ;
struct xpc_channel {int flags; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XPC_C_DISCONNECTED ; 
 int XPC_C_WDISCONNECT ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_channel*,int /*<<< orphan*/ ,unsigned long*) ; 
 int XPC_MAX_NCHANNELS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  xpUnregistering ; 
 short xp_max_npartitions ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct xpc_partition*) ; 
 scalar_t__ FUNC8 (struct xpc_partition*) ; 
 struct xpc_partition* xpc_partitions ; 

void
FUNC9(int ch_number)
{
	unsigned long irq_flags;
	short partid;
	struct xpc_partition *part;
	struct xpc_channel *ch;

	FUNC0(ch_number < 0 || ch_number >= XPC_MAX_NCHANNELS);

	/* initiate the channel disconnect for every active partition */
	for (partid = 0; partid < xp_max_npartitions; partid++) {
		part = &xpc_partitions[partid];

		if (FUNC8(part)) {
			ch = &part->channels[ch_number];
			FUNC6(ch);

			FUNC2(&ch->lock, irq_flags);

			if (!(ch->flags & XPC_C_DISCONNECTED)) {
				ch->flags |= XPC_C_WDISCONNECT;

				FUNC1(ch, xpUnregistering,
						       &irq_flags);
			}

			FUNC3(&ch->lock, irq_flags);

			FUNC5(ch);
			FUNC7(part);
		}
	}

	FUNC4(ch_number);
}