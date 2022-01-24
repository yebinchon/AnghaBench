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
struct bnx2x_virtf {int flr_clnup_stage; } ;
struct bnx2x {TYPE_1__* vfdb; } ;
struct TYPE_2__ {int* flrd_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  BNX2X_MSG_MCP ; 
 int FUNC0 (struct bnx2x*) ; 
 size_t FUNC1 (struct bnx2x*) ; 
 struct bnx2x_virtf* FUNC2 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  CHANNEL_TLV_FLR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_VF_DISABLED_DONE ; 
 int FLRD_VFS_DWORDS ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ VF_RESET ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct bnx2x*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/ ** drv_ack_vf_disabled ; 
 int /*<<< orphan*/  flr_clnup_stage ; 
 int /*<<< orphan*/  state ; 

__attribute__((used)) static void FUNC10(struct bnx2x *bp)
{
	struct bnx2x_virtf *vf;
	int i;

	for (i = 0; i < FUNC0(bp); i++) {
		/* VF should be RESET & in FLR cleanup states */
		if (FUNC8(bp, i, state) != VF_RESET ||
		    !FUNC8(bp, i, flr_clnup_stage))
			continue;

		FUNC3(BNX2X_MSG_IOV, "next vf to cleanup: %d. Num of vfs: %d\n",
		   i, FUNC0(bp));

		vf = FUNC2(bp, i);

		/* lock the vf pf channel */
		FUNC6(bp, vf, CHANNEL_TLV_FLR);

		/* invoke the VF FLR SM */
		FUNC9(bp, vf);

		/* mark the VF to be ACKED and continue */
		vf->flr_clnup_stage = false;
		FUNC7(bp, vf, CHANNEL_TLV_FLR);
	}

	/* Acknowledge the handled VFs.
	 * we are acknowledge all the vfs which an flr was requested for, even
	 * if amongst them there are such that we never opened, since the mcp
	 * will interrupt us immediately again if we only ack some of the bits,
	 * resulting in an endless loop. This can happen for example in KVM
	 * where an 'all ones' flr request is sometimes given by hyper visor
	 */
	FUNC3(BNX2X_MSG_MCP, "DRV_STATUS_VF_DISABLED ACK for vfs 0x%x 0x%x\n",
	   bp->vfdb->flrd_vfs[0], bp->vfdb->flrd_vfs[1]);
	for (i = 0; i < FLRD_VFS_DWORDS; i++)
		FUNC4(bp, drv_ack_vf_disabled[FUNC1(bp)][i],
			  bp->vfdb->flrd_vfs[i]);

	FUNC5(bp, DRV_MSG_CODE_VF_DISABLED_DONE, 0);

	/* clear the acked bits - better yet if the MCP implemented
	 * write to clear semantics
	 */
	for (i = 0; i < FLRD_VFS_DWORDS; i++)
		FUNC4(bp, drv_ack_vf_disabled[FUNC1(bp)][i], 0);
}