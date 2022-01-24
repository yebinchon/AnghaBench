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
struct net_device {int dummy; } ;
struct bnxt_ulp_ops {int dummy; } ;
struct bnxt_ulp {int /*<<< orphan*/  ulp_ops; void* handle; int /*<<< orphan*/  ref_count; } ;
struct bnxt_en_dev {struct bnxt_ulp* ulp_tbl; struct net_device* net; } ;
struct bnxt {unsigned int cp_nr_rings; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int BNXT_MAX_ULP ; 
 unsigned int BNXT_MIN_ROCE_STAT_CTXS ; 
 int BNXT_ROCE_ULP ; 
 int /*<<< orphan*/  BNXT_STATE_OPEN ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct bnxt* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct bnxt_ulp_ops*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct bnxt_en_dev *edev, int ulp_id,
			     struct bnxt_ulp_ops *ulp_ops, void *handle)
{
	struct net_device *dev = edev->net;
	struct bnxt *bp = FUNC5(dev);
	struct bnxt_ulp *ulp;

	FUNC0();
	if (ulp_id >= BNXT_MAX_ULP)
		return -EINVAL;

	ulp = &edev->ulp_tbl[ulp_id];
	if (FUNC6(ulp->ulp_ops)) {
		FUNC4(bp->dev, "ulp id %d already registered\n", ulp_id);
		return -EBUSY;
	}
	if (ulp_id == BNXT_ROCE_ULP) {
		unsigned int max_stat_ctxs;

		max_stat_ctxs = FUNC2(bp);
		if (max_stat_ctxs <= BNXT_MIN_ROCE_STAT_CTXS ||
		    bp->cp_nr_rings == max_stat_ctxs)
			return -ENOMEM;
	}

	FUNC1(&ulp->ref_count, 0);
	ulp->handle = handle;
	FUNC7(ulp->ulp_ops, ulp_ops);

	if (ulp_id == BNXT_ROCE_ULP) {
		if (FUNC8(BNXT_STATE_OPEN, &bp->state))
			FUNC3(bp, 0);
	}

	return 0;
}