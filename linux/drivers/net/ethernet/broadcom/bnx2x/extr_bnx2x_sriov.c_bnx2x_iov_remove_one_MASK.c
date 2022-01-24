#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bnx2x {TYPE_1__* vfdb; } ;
struct TYPE_4__ {int total; scalar_t__ first_vf_in_pf; } ;
struct TYPE_3__ {TYPE_2__ sriov; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int /*<<< orphan*/ ) ; 

void FUNC8(struct bnx2x *bp)
{
	int vf_idx;

	/* if SRIOV is not enabled there's nothing to do */
	if (!FUNC3(bp))
		return;

	FUNC5(bp);

	/* disable access to all VFs */
	for (vf_idx = 0; vf_idx < bp->vfdb->sriov.total; vf_idx++) {
		FUNC6(bp,
				   FUNC2(bp,
						bp->vfdb->sriov.first_vf_in_pf +
						vf_idx));
		FUNC1(BNX2X_MSG_IOV, "disabling internal access for vf %d\n",
		   bp->vfdb->sriov.first_vf_in_pf + vf_idx);
		FUNC7(bp, 0);
		FUNC6(bp, FUNC0(bp));
	}

	/* free vf database */
	FUNC4(bp);
}