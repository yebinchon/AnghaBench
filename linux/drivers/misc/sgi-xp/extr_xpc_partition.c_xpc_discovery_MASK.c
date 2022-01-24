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
struct xpc_rsvd_page {int dummy; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_2__ {int /*<<< orphan*/  (* request_partition_activation ) (struct xpc_rsvd_page*,unsigned long,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ XPC_RP_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC1 () ; 
 unsigned long* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct xpc_rsvd_page*,unsigned long,int) ; 
 scalar_t__ FUNC5 (int,unsigned long*) ; 
 int xpLocalPartid ; 
 int xpSuccess ; 
 int xp_region_size ; 
 TYPE_1__ xpc_arch_ops ; 
 scalar_t__ xpc_exiting ; 
 int FUNC6 (int,unsigned long*,struct xpc_rsvd_page*,unsigned long*) ; 
 struct xpc_rsvd_page* FUNC7 (scalar_t__,int /*<<< orphan*/ ,void**) ; 
 unsigned long* xpc_mach_nasids ; 
 scalar_t__ xpc_nasid_mask_nbytes ; 
 int /*<<< orphan*/  xpc_nasid_mask_nlongs ; 
 int /*<<< orphan*/  xpc_part ; 
 unsigned long* xpc_part_nasids ; 

void
FUNC8(void)
{
	void *remote_rp_base;
	struct xpc_rsvd_page *remote_rp;
	unsigned long remote_rp_pa;
	int region;
	int region_size;
	int max_regions;
	int nasid;
	unsigned long *discovered_nasids;
	enum xp_retval ret;

	remote_rp = FUNC7(XPC_RP_HEADER_SIZE +
						  xpc_nasid_mask_nbytes,
						  GFP_KERNEL, &remote_rp_base);
	if (remote_rp == NULL)
		return;

	discovered_nasids = FUNC2(xpc_nasid_mask_nlongs, sizeof(long),
				    GFP_KERNEL);
	if (discovered_nasids == NULL) {
		FUNC3(remote_rp_base);
		return;
	}

	/*
	 * The term 'region' in this context refers to the minimum number of
	 * nodes that can comprise an access protection grouping. The access
	 * protection is in regards to memory, IOI and IPI.
	 */
	region_size = xp_region_size;

	if (FUNC1())
		max_regions = 256;
	else {
		max_regions = 64;

		switch (region_size) {
		case 128:
			max_regions *= 2;
			/* fall through */
		case 64:
			max_regions *= 2;
			/* fall through */
		case 32:
			max_regions *= 2;
			region_size = 16;
		}
	}

	for (region = 0; region < max_regions; region++) {

		if (xpc_exiting)
			break;

		FUNC0(xpc_part, "searching region %d\n", region);

		for (nasid = (region * region_size * 2);
		     nasid < ((region + 1) * region_size * 2); nasid += 2) {

			if (xpc_exiting)
				break;

			FUNC0(xpc_part, "checking nasid %d\n", nasid);

			if (FUNC5(nasid / 2, xpc_part_nasids)) {
				FUNC0(xpc_part, "PROM indicates Nasid %d is "
					"part of the local partition; skipping "
					"region\n", nasid);
				break;
			}

			if (!(FUNC5(nasid / 2, xpc_mach_nasids))) {
				FUNC0(xpc_part, "PROM indicates Nasid %d was "
					"not on Numa-Link network at reset\n",
					nasid);
				continue;
			}

			if (FUNC5(nasid / 2, discovered_nasids)) {
				FUNC0(xpc_part, "Nasid %d is part of a "
					"partition which was previously "
					"discovered\n", nasid);
				continue;
			}

			/* pull over the rsvd page header & part_nasids mask */

			ret = FUNC6(nasid, discovered_nasids,
						remote_rp, &remote_rp_pa);
			if (ret != xpSuccess) {
				FUNC0(xpc_part, "unable to get reserved page "
					"from nasid %d, reason=%d\n", nasid,
					ret);

				if (ret == xpLocalPartid)
					break;

				continue;
			}

			xpc_arch_ops.request_partition_activation(remote_rp,
							 remote_rp_pa, nasid);
		}
	}

	FUNC3(discovered_nasids);
	FUNC3(remote_rp_base);
}