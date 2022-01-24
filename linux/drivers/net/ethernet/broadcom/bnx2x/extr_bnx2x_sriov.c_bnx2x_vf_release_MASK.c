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
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  CHANNEL_TLV_PF_RELEASE_VF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bnx2x*,struct bnx2x_virtf*) ; 

int FUNC5(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
	int rc;

	FUNC0(BNX2X_MSG_IOV, "PF releasing vf %d\n", vf->abs_vfid);
	FUNC2(bp, vf, CHANNEL_TLV_PF_RELEASE_VF);

	rc = FUNC4(bp, vf);
	if (rc)
		FUNC1(rc,
		     "VF[%d] Failed to allocate resources for release op- rc=%d\n",
		     vf->abs_vfid, rc);
	FUNC3(bp, vf, CHANNEL_TLV_PF_RELEASE_VF);
	return rc;
}