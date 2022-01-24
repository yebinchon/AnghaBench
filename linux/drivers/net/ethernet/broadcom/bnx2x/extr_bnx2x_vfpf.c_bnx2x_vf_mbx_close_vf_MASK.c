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
struct bnx2x_vf_mbx {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_virtf*,int) ; 

__attribute__((used)) static void FUNC3(struct bnx2x *bp, struct bnx2x_virtf *vf,
				  struct bnx2x_vf_mbx *mbx)
{
	int rc;

	FUNC0(BNX2X_MSG_IOV, "VF[%d] VF_CLOSE\n", vf->abs_vfid);

	rc = FUNC1(bp, vf);
	FUNC2(bp, vf, rc);
}