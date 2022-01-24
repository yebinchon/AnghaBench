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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct regpair {int lo; scalar_t__ hi; } ;
struct TYPE_2__ {int pending_req; int b_pending_msg; } ;
struct qed_vf_info {TYPE_1__ vf_mbx; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QED_IOV_WQ_MSG_FLAG ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 struct qed_vf_info* FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct qed_hwfn *p_hwfn,
			      u16 abs_vfid, struct regpair *vf_msg)
{
	struct qed_vf_info *p_vf = FUNC1(p_hwfn,
			   abs_vfid);

	if (!p_vf)
		return 0;

	/* List the physical address of the request so that handler
	 * could later on copy the message from it.
	 */
	p_vf->vf_mbx.pending_req = (((u64)vf_msg->hi) << 32) | vf_msg->lo;

	/* Mark the event and schedule the workqueue */
	p_vf->vf_mbx.b_pending_msg = true;
	FUNC0(p_hwfn, QED_IOV_WQ_MSG_FLAG);

	return 0;
}