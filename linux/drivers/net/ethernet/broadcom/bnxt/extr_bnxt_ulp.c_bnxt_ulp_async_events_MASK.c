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
typedef  scalar_t__ u16 ;
struct hwrm_async_event_cmpl {int /*<<< orphan*/  event_id; } ;
struct bnxt_ulp_ops {int /*<<< orphan*/  (* ulp_async_notifier ) (int /*<<< orphan*/ ,struct hwrm_async_event_cmpl*) ;} ;
struct bnxt_ulp {scalar_t__ max_async_event_id; int /*<<< orphan*/  handle; int /*<<< orphan*/  async_events_bmap; int /*<<< orphan*/  ulp_ops; } ;
struct bnxt_en_dev {struct bnxt_ulp* ulp_tbl; } ;
struct bnxt {struct bnxt_en_dev* edev; } ;

/* Variables and functions */
 int BNXT_MAX_ULP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct bnxt_ulp_ops* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct hwrm_async_event_cmpl*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC7(struct bnxt *bp, struct hwrm_async_event_cmpl *cmpl)
{
	u16 event_id = FUNC0(cmpl->event_id);
	struct bnxt_en_dev *edev = bp->edev;
	struct bnxt_ulp_ops *ops;
	int i;

	if (!edev)
		return;

	FUNC2();
	for (i = 0; i < BNXT_MAX_ULP; i++) {
		struct bnxt_ulp *ulp = &edev->ulp_tbl[i];

		ops = FUNC1(ulp->ulp_ops);
		if (!ops || !ops->ulp_async_notifier)
			continue;
		if (!ulp->async_events_bmap ||
		    event_id > ulp->max_async_event_id)
			continue;

		/* Read max_async_event_id first before testing the bitmap. */
		FUNC4();
		if (FUNC6(event_id, ulp->async_events_bmap))
			ops->ulp_async_notifier(ulp->handle, cmpl);
	}
	FUNC3();
}