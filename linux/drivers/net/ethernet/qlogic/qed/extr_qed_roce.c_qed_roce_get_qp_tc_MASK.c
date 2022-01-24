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
typedef  int u8 ;
struct qed_rdma_qp {int vlan_id; int /*<<< orphan*/  icid; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QED_MSG_SP ; 
 int VLAN_PRIO_MASK ; 
 int VLAN_PRIO_SHIFT ; 
 int FUNC1 (struct qed_hwfn*,int) ; 

__attribute__((used)) static u8 FUNC2(struct qed_hwfn *p_hwfn, struct qed_rdma_qp *qp)
{
	u8 pri, tc = 0;

	if (qp->vlan_id) {
		pri = (qp->vlan_id & VLAN_PRIO_MASK) >> VLAN_PRIO_SHIFT;
		tc = FUNC1(p_hwfn, pri);
	}

	FUNC0(p_hwfn, QED_MSG_SP,
		   "qp icid %u tc: %u (vlan priority %s)\n",
		   qp->icid, tc, qp->vlan_id ? "enabled" : "disabled");

	return tc;
}