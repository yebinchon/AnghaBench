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
struct xpc_rsvd_page {int SAL_version; int SAL_partid; int max_npartitions; int SAL_nasids_size; unsigned long ts_jiffies; int /*<<< orphan*/  version; } ;
struct TYPE_2__ {int (* setup_rsvd_page ) (struct xpc_rsvd_page*) ;} ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC2 (struct xpc_rsvd_page*) ; 
 int /*<<< orphan*/  FUNC3 (struct xpc_rsvd_page*) ; 
 int /*<<< orphan*/  XPC_RP_VERSION ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct xpc_rsvd_page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int xp_max_npartitions ; 
 int xp_partition_id ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 TYPE_1__ xpc_arch_ops ; 
 unsigned long FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xpc_mach_nasids ; 
 int xpc_nasid_mask_nbytes ; 
 int /*<<< orphan*/  xpc_nasid_mask_nlongs ; 
 int /*<<< orphan*/  xpc_part ; 
 int /*<<< orphan*/  xpc_part_nasids ; 
 struct xpc_rsvd_page* xpc_rsvd_page ; 

int
FUNC13(void)
{
	int ret;
	struct xpc_rsvd_page *rp;
	unsigned long rp_pa;
	unsigned long new_ts_jiffies;

	/* get the local reserved page's address */

	FUNC6();
	rp_pa = FUNC12(FUNC10(FUNC8()));
	FUNC7();
	if (rp_pa == 0) {
		FUNC5(xpc_part, "SAL failed to locate the reserved page\n");
		return -ESRCH;
	}
	rp = (struct xpc_rsvd_page *)FUNC4(FUNC11(rp_pa));

	if (rp->SAL_version < 3) {
		/* SAL_versions < 3 had a SAL_partid defined as a u8 */
		rp->SAL_partid &= 0xff;
	}
	FUNC1(rp->SAL_partid != xp_partition_id);

	if (rp->SAL_partid < 0 || rp->SAL_partid >= xp_max_npartitions) {
		FUNC5(xpc_part, "the reserved page's partid of %d is outside "
			"supported range (< 0 || >= %d)\n", rp->SAL_partid,
			xp_max_npartitions);
		return -EINVAL;
	}

	rp->version = XPC_RP_VERSION;
	rp->max_npartitions = xp_max_npartitions;

	/* establish the actual sizes of the nasid masks */
	if (rp->SAL_version == 1) {
		/* SAL_version 1 didn't set the nasids_size field */
		rp->SAL_nasids_size = 128;
	}
	xpc_nasid_mask_nbytes = rp->SAL_nasids_size;
	xpc_nasid_mask_nlongs = FUNC0(rp->SAL_nasids_size *
					      BITS_PER_BYTE);

	/* setup the pointers to the various items in the reserved page */
	xpc_part_nasids = FUNC3(rp);
	xpc_mach_nasids = FUNC2(rp);

	ret = xpc_arch_ops.setup_rsvd_page(rp);
	if (ret != 0)
		return ret;

	/*
	 * Set timestamp of when reserved page was setup by XPC.
	 * This signifies to the remote partition that our reserved
	 * page is initialized.
	 */
	new_ts_jiffies = jiffies;
	if (new_ts_jiffies == 0 || new_ts_jiffies == rp->ts_jiffies)
		new_ts_jiffies++;
	rp->ts_jiffies = new_ts_jiffies;

	xpc_rsvd_page = rp;
	return 0;
}