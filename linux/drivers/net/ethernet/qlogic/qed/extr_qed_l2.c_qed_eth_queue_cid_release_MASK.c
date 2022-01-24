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
struct qed_queue_cid {int vf_legacy; scalar_t__ vfid; int /*<<< orphan*/  cid; } ;
struct qed_hwfn {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int QED_QCID_LEGACY_VF_CID ; 
 scalar_t__ QED_QUEUE_CID_SELF ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_queue_cid*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_queue_cid*) ; 

void FUNC4(struct qed_hwfn *p_hwfn,
			       struct qed_queue_cid *p_cid)
{
	bool b_legacy_vf = !!(p_cid->vf_legacy & QED_QCID_LEGACY_VF_CID);

	if (FUNC0(p_hwfn->cdev) && !b_legacy_vf)
		FUNC1(p_hwfn, p_cid->cid, p_cid->vfid);

	/* For PF's VFs we maintain the index inside queue-zone in IOV */
	if (p_cid->vfid == QED_QUEUE_CID_SELF)
		FUNC2(p_hwfn, p_cid);

	FUNC3(p_cid);
}