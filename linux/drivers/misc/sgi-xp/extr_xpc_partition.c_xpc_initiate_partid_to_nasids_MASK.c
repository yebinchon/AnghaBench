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
struct xpc_partition {scalar_t__ remote_rp_pa; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int xpPartitionDown ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xpc_nasid_mask_nbytes ; 
 struct xpc_partition* xpc_partitions ; 

enum xp_retval
FUNC4(short partid, void *nasid_mask)
{
	struct xpc_partition *part;
	unsigned long part_nasid_pa;

	part = &xpc_partitions[partid];
	if (part->remote_rp_pa == 0)
		return xpPartitionDown;

	FUNC1(nasid_mask, 0, xpc_nasid_mask_nbytes);

	part_nasid_pa = (unsigned long)FUNC0(part->remote_rp_pa);

	return FUNC3(FUNC2(nasid_mask), part_nasid_pa,
				xpc_nasid_mask_nbytes);
}