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
struct bnxt_ulp_ops {int /*<<< orphan*/  (* ulp_sriov_config ) (int /*<<< orphan*/ ,int) ;} ;
struct bnxt_ulp {int /*<<< orphan*/  handle; int /*<<< orphan*/  ulp_ops; } ;
struct bnxt_en_dev {struct bnxt_ulp* ulp_tbl; } ;
struct bnxt {struct bnxt_en_dev* edev; } ;

/* Variables and functions */
 int BNXT_MAX_ULP ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_ulp*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_ulp*) ; 
 struct bnxt_ulp_ops* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct bnxt *bp, int num_vfs)
{
	struct bnxt_en_dev *edev = bp->edev;
	struct bnxt_ulp_ops *ops;
	int i;

	if (!edev)
		return;

	for (i = 0; i < BNXT_MAX_ULP; i++) {
		struct bnxt_ulp *ulp = &edev->ulp_tbl[i];

		FUNC3();
		ops = FUNC2(ulp->ulp_ops);
		if (!ops || !ops->ulp_sriov_config) {
			FUNC4();
			continue;
		}
		FUNC0(ulp);
		FUNC4();
		ops->ulp_sriov_config(ulp->handle, num_vfs);
		FUNC1(ulp);
	}
}