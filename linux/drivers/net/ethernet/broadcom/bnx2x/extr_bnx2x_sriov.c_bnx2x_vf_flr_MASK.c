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
struct bnx2x_virtf {int malicious; int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct bnx2x*,struct bnx2x_virtf*,int) ; 
 int FUNC7 (struct bnx2x_virtf*) ; 

__attribute__((used)) static void FUNC8(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
	int rc, i;

	FUNC1(BNX2X_MSG_IOV, "vf[%d]\n", vf->abs_vfid);

	/* the cleanup operations are valid if and only if the VF
	 * was first acquired.
	 */
	for (i = 0; i < FUNC7(vf); i++) {
		rc = FUNC6(bp, vf, i);
		if (rc)
			goto out;
	}

	/* remove multicasts */
	FUNC5(bp, vf, NULL, 0, true);

	/* dispatch final cleanup and wait for HW queues to flush */
	FUNC3(bp, vf);

	/* release VF resources */
	FUNC4(bp, vf);

	vf->malicious = false;

	/* re-open the mailbox */
	FUNC2(bp, vf->abs_vfid);
	return;
out:
	FUNC0("vf[%d:%d] failed flr: rc %d\n",
		  vf->abs_vfid, i, rc);
}