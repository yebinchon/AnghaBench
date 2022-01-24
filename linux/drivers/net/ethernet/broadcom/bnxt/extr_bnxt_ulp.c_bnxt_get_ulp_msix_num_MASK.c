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
struct bnxt_en_dev {TYPE_1__* ulp_tbl; } ;
struct bnxt {struct bnxt_en_dev* edev; } ;
struct TYPE_2__ {int msix_requested; } ;

/* Variables and functions */
 size_t BNXT_ROCE_ULP ; 
 scalar_t__ FUNC0 (struct bnxt_en_dev*,size_t) ; 

int FUNC1(struct bnxt *bp)
{
	if (FUNC0(bp->edev, BNXT_ROCE_ULP)) {
		struct bnxt_en_dev *edev = bp->edev;

		return edev->ulp_tbl[BNXT_ROCE_ULP].msix_requested;
	}
	return 0;
}