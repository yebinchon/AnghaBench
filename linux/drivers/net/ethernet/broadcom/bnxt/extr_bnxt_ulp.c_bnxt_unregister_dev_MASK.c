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
struct net_device {int dummy; } ;
struct bnxt_ulp {int /*<<< orphan*/  ref_count; int /*<<< orphan*/ * async_events_bmap; scalar_t__ max_async_event_id; int /*<<< orphan*/  ulp_ops; scalar_t__ msix_requested; } ;
struct bnxt_en_dev {TYPE_1__* en_ops; struct bnxt_ulp* ulp_tbl; struct net_device* net; } ;
struct bnxt {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* bnxt_free_msix ) (struct bnxt_en_dev*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int BNXT_MAX_ULP ; 
 int BNXT_ROCE_ULP ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct bnxt* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnxt_en_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct bnxt_en_dev *edev, int ulp_id)
{
	struct net_device *dev = edev->net;
	struct bnxt *bp = FUNC6(dev);
	struct bnxt_ulp *ulp;
	int i = 0;

	FUNC0();
	if (ulp_id >= BNXT_MAX_ULP)
		return -EINVAL;

	ulp = &edev->ulp_tbl[ulp_id];
	if (!FUNC7(ulp->ulp_ops)) {
		FUNC5(bp->dev, "ulp id %d not registered\n", ulp_id);
		return -EINVAL;
	}
	if (ulp_id == BNXT_ROCE_ULP && ulp->msix_requested)
		edev->en_ops->bnxt_free_msix(edev, ulp_id);

	if (ulp->max_async_event_id)
		FUNC3(bp, NULL, 0);

	FUNC1(ulp->ulp_ops, NULL);
	FUNC9();
	ulp->max_async_event_id = 0;
	ulp->async_events_bmap = NULL;
	while (FUNC2(&ulp->ref_count) != 0 && i < 10) {
		FUNC4(100);
		i++;
	}
	return 0;
}