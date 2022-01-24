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
typedef  int /*<<< orphan*/  u16 ;
struct qed_vf_info {int req_spoofchk_val; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int EINVAL ; 
 int FUNC1 (struct qed_hwfn*,struct qed_vf_info*,int) ; 
 struct qed_vf_info* FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,int) ; 

__attribute__((used)) static int FUNC5(struct qed_hwfn *p_hwfn, int vfid, bool val)
{
	struct qed_vf_info *vf;
	int rc = -EINVAL;

	if (!FUNC3(p_hwfn, vfid)) {
		FUNC0(p_hwfn,
			  "SR-IOV sanity check failed, can't set spoofchk\n");
		goto out;
	}

	vf = FUNC2(p_hwfn, (u16) vfid, true);
	if (!vf)
		goto out;

	if (!FUNC4(p_hwfn, vfid)) {
		/* After VF VPORT start PF will configure spoof check */
		vf->req_spoofchk_val = val;
		rc = 0;
		goto out;
	}

	rc = FUNC1(p_hwfn, vf, val);

out:
	return rc;
}