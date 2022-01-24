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
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int rel_pf_id; struct qed_dev* cdev; } ;
struct qed_dev {int num_ports_in_engine; int ppfid_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int,int) ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC1 (struct qed_dev*) ; 
 int FUNC2 (struct qed_hwfn*,struct qed_ptt*) ; 

__attribute__((used)) static int FUNC3(struct qed_hwfn *p_hwfn,
				   struct qed_ptt *p_ptt)
{
	struct qed_dev *cdev = p_hwfn->cdev;
	u8 native_ppfid_idx;
	int rc;

	/* Calculation of BB/AH is different for native_ppfid_idx */
	if (FUNC1(cdev))
		native_ppfid_idx = p_hwfn->rel_pf_id;
	else
		native_ppfid_idx = p_hwfn->rel_pf_id /
		    cdev->num_ports_in_engine;

	rc = FUNC2(p_hwfn, p_ptt);
	if (rc != 0 && rc != -EOPNOTSUPP)
		return rc;
	else if (rc == -EOPNOTSUPP)
		cdev->ppfid_bitmap = 0x1 << native_ppfid_idx;

	if (!(cdev->ppfid_bitmap & (0x1 << native_ppfid_idx))) {
		FUNC0(p_hwfn,
			"Fix the PPFID bitmap to include the native PPFID [native_ppfid_idx %hhd, orig_bitmap 0x%hhx]\n",
			native_ppfid_idx, cdev->ppfid_bitmap);
		cdev->ppfid_bitmap = 0x1 << native_ppfid_idx;
	}

	return 0;
}