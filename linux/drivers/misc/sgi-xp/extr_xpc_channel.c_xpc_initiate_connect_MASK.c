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
struct xpc_partition {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XPC_MAX_NCHANNELS ; 
 short xp_max_npartitions ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_partition*) ; 
 scalar_t__ FUNC2 (struct xpc_partition*) ; 
 struct xpc_partition* xpc_partitions ; 
 int /*<<< orphan*/  FUNC3 (struct xpc_partition*) ; 

void
FUNC4(int ch_number)
{
	short partid;
	struct xpc_partition *part;

	FUNC0(ch_number < 0 || ch_number >= XPC_MAX_NCHANNELS);

	for (partid = 0; partid < xp_max_npartitions; partid++) {
		part = &xpc_partitions[partid];

		if (FUNC2(part)) {
			/*
			 * Initiate the establishment of a connection on the
			 * newly registered channel to the remote partition.
			 */
			FUNC3(part);
			FUNC1(part);
		}
	}
}