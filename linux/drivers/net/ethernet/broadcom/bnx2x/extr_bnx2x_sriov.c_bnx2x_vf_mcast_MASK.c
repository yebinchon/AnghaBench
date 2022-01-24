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
struct bnx2x_virtf {int /*<<< orphan*/  mcast_obj; int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_mcast_ramrod_params {int mcast_list_len; int /*<<< orphan*/  mcast_list; int /*<<< orphan*/  ramrod_flags; int /*<<< orphan*/ * mcast_obj; } ;
struct bnx2x_mcast_list_elem {int /*<<< orphan*/  link; int /*<<< orphan*/  mac; } ;
struct bnx2x {int dummy; } ;
typedef  int /*<<< orphan*/  bnx2x_mac_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_MCAST_CMD_DEL ; 
 int /*<<< orphan*/  BNX2X_MCAST_CMD_SET ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  RAMROD_DRV_CLR_ONLY ; 
 int FUNC3 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int /*<<< orphan*/ ) ; 
 struct bnx2x_mcast_list_elem* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x_mcast_list_elem*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x_mcast_ramrod_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct bnx2x *bp, struct bnx2x_virtf *vf,
		   bnx2x_mac_addr_t *mcasts, int mc_num, bool drv_only)
{
	struct bnx2x_mcast_list_elem *mc = NULL;
	struct bnx2x_mcast_ramrod_params mcast;
	int rc, i;

	FUNC1(BNX2X_MSG_IOV, "vf[%d]\n", vf->abs_vfid);

	/* Prepare Multicast command */
	FUNC7(&mcast, 0, sizeof(struct bnx2x_mcast_ramrod_params));
	mcast.mcast_obj = &vf->mcast_obj;
	if (drv_only)
		FUNC8(RAMROD_DRV_CLR_ONLY, &mcast.ramrod_flags);
	else
		FUNC8(RAMROD_COMP_WAIT, &mcast.ramrod_flags);
	if (mc_num) {
		mc = FUNC4(mc_num, sizeof(struct bnx2x_mcast_list_elem),
			     GFP_KERNEL);
		if (!mc) {
			FUNC0("Cannot Configure multicasts due to lack of memory\n");
			return -ENOMEM;
		}
	}

	if (mc_num) {
		FUNC2(&mcast.mcast_list);
		for (i = 0; i < mc_num; i++) {
			mc[i].mac = mcasts[i];
			FUNC6(&mc[i].link,
				      &mcast.mcast_list);
		}

		/* add new mcasts */
		mcast.mcast_list_len = mc_num;
		rc = FUNC3(bp, &mcast, BNX2X_MCAST_CMD_SET);
		if (rc)
			FUNC0("Failed to set multicasts\n");
	} else {
		/* clear existing mcasts */
		rc = FUNC3(bp, &mcast, BNX2X_MCAST_CMD_DEL);
		if (rc)
			FUNC0("Failed to remove multicasts\n");
	}

	FUNC5(mc);

	return rc;
}