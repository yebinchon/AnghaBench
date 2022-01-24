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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  BNX2X_VF_FILTER_MAC ; 
 int /*<<< orphan*/  BNX2X_VF_FILTER_VLAN ; 
 int /*<<< orphan*/  BNX2X_VF_FILTER_VLAN_MAC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int LEADING_IDX ; 
 scalar_t__ FUNC2 (struct bnx2x*,struct bnx2x_virtf*,int) ; 
 int FUNC3 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct bnx2x*,struct bnx2x_virtf*,int) ; 
 int FUNC5 (struct bnx2x*,struct bnx2x_virtf*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bnx2x*,struct bnx2x_virtf*,int,int,int /*<<< orphan*/ ) ; 

int FUNC7(struct bnx2x *bp, struct bnx2x_virtf *vf, int qid)
{
	int rc;

	FUNC1(BNX2X_MSG_IOV, "vf[%d:%d]\n", vf->abs_vfid, qid);

	/* Remove all classification configuration for leading queue */
	if (qid == LEADING_IDX) {
		rc = FUNC5(bp, vf, qid, 0);
		if (rc)
			goto op_err;

		/* Remove filtering if feasible */
		if (FUNC2(bp, vf, true)) {
			rc = FUNC6(bp, vf, qid,
						     false,
						     BNX2X_VF_FILTER_VLAN_MAC);
			if (rc)
				goto op_err;
			rc = FUNC6(bp, vf, qid,
						     false,
						     BNX2X_VF_FILTER_VLAN);
			if (rc)
				goto op_err;
			rc = FUNC6(bp, vf, qid,
						     false,
						     BNX2X_VF_FILTER_MAC);
			if (rc)
				goto op_err;
			rc = FUNC3(bp, vf, NULL, 0, false);
			if (rc)
				goto op_err;
		}
	}

	/* Destroy queue */
	rc = FUNC4(bp, vf, qid);
	if (rc)
		goto op_err;
	return rc;
op_err:
	FUNC0("vf[%d:%d] error: rc %d\n",
		  vf->abs_vfid, qid, rc);
	return rc;
}