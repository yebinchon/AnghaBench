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
struct bnx2x_virtf {int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_vf_mac_vlan_filters {int count; TYPE_1__* filters; } ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int add; int /*<<< orphan*/  applied; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_virtf*,int) ; 
 int FUNC3 (struct bnx2x*,struct bnx2x_virtf*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x_vf_mac_vlan_filters*) ; 

int FUNC5(struct bnx2x *bp, struct bnx2x_virtf *vf,
				  struct bnx2x_vf_mac_vlan_filters *filters,
				  int qid, bool drv_only)
{
	int rc = 0, i;

	FUNC1(BNX2X_MSG_IOV, "vf[%d]\n", vf->abs_vfid);

	if (!FUNC2(bp, vf, true))
		return -EINVAL;

	/* Prepare ramrod params */
	for (i = 0; i < filters->count; i++) {
		rc = FUNC3(bp, vf, qid,
					      &filters->filters[i], drv_only);
		if (rc)
			break;
	}

	/* Rollback if needed */
	if (i != filters->count) {
		FUNC0("Managed only %d/%d filters - rolling back\n",
			  i, filters->count);
		while (--i >= 0) {
			if (!filters->filters[i].applied)
				continue;
			filters->filters[i].add = !filters->filters[i].add;
			FUNC3(bp, vf, qid,
						 &filters->filters[i],
						 drv_only);
		}
	}

	/* It's our responsibility to free the filters */
	FUNC4(filters);

	return rc;
}