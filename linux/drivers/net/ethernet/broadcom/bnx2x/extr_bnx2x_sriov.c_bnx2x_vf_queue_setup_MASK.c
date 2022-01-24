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
struct bnx2x_virtf {int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_vf_queue_construct_params {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  BNX2X_SP_RTNL_HYPERVISOR_VLAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bnx2x*,struct bnx2x_virtf*,int,struct bnx2x_vf_queue_construct_params*) ; 

int FUNC4(struct bnx2x *bp, struct bnx2x_virtf *vf, int qid,
			 struct bnx2x_vf_queue_construct_params *qctor)
{
	int rc;

	FUNC1(BNX2X_MSG_IOV, "vf[%d:%d]\n", vf->abs_vfid, qid);

	rc = FUNC3(bp, vf, qid, qctor);
	if (rc)
		goto op_err;

	/* Schedule the configuration of any pending vlan filters */
	FUNC2(bp, BNX2X_SP_RTNL_HYPERVISOR_VLAN,
			       BNX2X_MSG_IOV);
	return 0;
op_err:
	FUNC0("QSETUP[%d:%d] error: rc %d\n", vf->abs_vfid, qid, rc);
	return rc;
}