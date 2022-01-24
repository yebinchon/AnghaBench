#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int phy_retry; scalar_t__ phy_retry_expires; } ;
struct bnxt {int flags; scalar_t__ current_interval; int /*<<< orphan*/  timer; int /*<<< orphan*/  state; TYPE_2__* dev; TYPE_1__ link_info; int /*<<< orphan*/  link_lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  hw_features; } ;

/* Variables and functions */
 int BNXT_FLAG_RFS ; 
 int BNXT_FLAG_USING_MSIX ; 
 scalar_t__ FUNC0 (struct bnxt*) ; 
 scalar_t__ FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  BNXT_STATE_OPEN ; 
 int HZ ; 
 int /*<<< orphan*/  NETIF_F_NTUPLE ; 
 int FUNC2 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC10 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC12 (struct bnxt*) ; 
 int FUNC13 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC14 (struct bnxt*) ; 
 int FUNC15 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct bnxt*) ; 
 int FUNC17 (struct bnxt*) ; 
 int FUNC18 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct bnxt*) ; 
 int FUNC20 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC21 (struct bnxt*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC30(struct bnxt *bp, bool irq_re_init, bool link_re_init)
{
	int rc = 0;

	FUNC16(bp);
	FUNC27(bp->dev);
	if (irq_re_init) {
		/* Reserve rings now if none were reserved at driver probe. */
		rc = FUNC13(bp);
		if (rc) {
			FUNC25(bp->dev, "Failed to reserve default rings at open\n");
			return rc;
		}
	}
	rc = FUNC18(bp, irq_re_init);
	if (rc)
		return rc;
	if ((bp->flags & BNXT_FLAG_RFS) &&
	    !(bp->flags & BNXT_FLAG_USING_MSIX)) {
		/* disable RFS if falling back to INTA */
		bp->dev->hw_features &= ~NETIF_F_NTUPLE;
		bp->flags &= ~BNXT_FLAG_RFS;
	}

	rc = FUNC2(bp, irq_re_init);
	if (rc) {
		FUNC25(bp->dev, "bnxt_alloc_mem err: %x\n", rc);
		goto open_err_free_mem;
	}

	if (irq_re_init) {
		FUNC14(bp);
		rc = FUNC17(bp);
		if (rc) {
			FUNC25(bp->dev, "bnxt_request_irq err: %x\n", rc);
			goto open_err_irq;
		}
	}

	FUNC8(bp);
	FUNC4(bp);

	rc = FUNC15(bp, irq_re_init);
	if (rc) {
		FUNC25(bp->dev, "bnxt_init_nic err: %x\n", rc);
		goto open_err;
	}

	if (link_re_init) {
		FUNC23(&bp->link_lock);
		rc = FUNC20(bp);
		FUNC24(&bp->link_lock);
		if (rc) {
			FUNC26(bp->dev, "failed to update phy settings\n");
			if (FUNC1(bp)) {
				bp->link_info.phy_retry = true;
				bp->link_info.phy_retry_expires =
					jiffies + 5 * HZ;
			}
		}
	}

	if (irq_re_init)
		FUNC29(bp->dev);

	FUNC28(BNXT_STATE_OPEN, &bp->state);
	FUNC7(bp);
	/* Enable TX queues */
	FUNC19(bp);
	FUNC22(&bp->timer, jiffies + bp->current_interval);
	/* Poll link status and check for SFP+ module status */
	FUNC12(bp);

	/* VF-reps may need to be re-opened after the PF is re-opened */
	if (FUNC0(bp))
		FUNC21(bp);
	return 0;

open_err:
	FUNC3(bp);
	FUNC6(bp);

open_err_irq:
	FUNC5(bp);

open_err_free_mem:
	FUNC11(bp);
	FUNC9(bp);
	FUNC10(bp, true);
	return rc;
}