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
struct bnxt_ulp_ops {int /*<<< orphan*/  (* ulp_irq_stop ) (int /*<<< orphan*/ ) ;} ;
struct bnxt_ulp {int /*<<< orphan*/  handle; int /*<<< orphan*/  ulp_ops; int /*<<< orphan*/  msix_requested; } ;
struct bnxt_en_dev {int flags; struct bnxt_ulp* ulp_tbl; } ;
struct bnxt {struct bnxt_en_dev* edev; } ;

/* Variables and functions */
 int BNXT_EN_FLAG_MSIX_REQUESTED ; 
 size_t BNXT_ROCE_ULP ; 
 scalar_t__ FUNC0 (struct bnxt_en_dev*,size_t) ; 
 struct bnxt_ulp_ops* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct bnxt *bp)
{
	struct bnxt_en_dev *edev = bp->edev;
	struct bnxt_ulp_ops *ops;

	if (!edev || !(edev->flags & BNXT_EN_FLAG_MSIX_REQUESTED))
		return;

	if (FUNC0(bp->edev, BNXT_ROCE_ULP)) {
		struct bnxt_ulp *ulp = &edev->ulp_tbl[BNXT_ROCE_ULP];

		if (!ulp->msix_requested)
			return;

		ops = FUNC1(ulp->ulp_ops);
		if (!ops || !ops->ulp_irq_stop)
			return;
		ops->ulp_irq_stop(ulp->handle);
	}
}