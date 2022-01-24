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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int drv_state; } ;
struct bnx2 {int /*<<< orphan*/  cnic_lock; TYPE_1__ cnic_eth_dev; int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_ring_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_DRV_MSG_CODE_RESET ; 
 int CNIC_DRV_STATE_REGD ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*) ; 
 int FUNC1 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2*) ; 
 int FUNC7 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2*,int) ; 
 int FUNC11 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC14 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct bnx2*) ; 
 int FUNC16 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disable_msi ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(struct bnx2 *bp, u32 rx, u32 tx, bool reset_irq)
{
	if (FUNC20(bp->dev)) {
		/* Reset will erase chipset stats; save them */
		FUNC13(bp);

		FUNC10(bp, true);
		FUNC12(bp, BNX2_DRV_MSG_CODE_RESET);
		if (reset_irq) {
			FUNC3(bp);
			FUNC2(bp);
		} else {
			FUNC0(bp);
		}
		FUNC5(bp);
		FUNC4(bp);
	}

	FUNC14(bp, rx);
	bp->tx_ring_size = tx;

	if (FUNC20(bp->dev)) {
		int rc = 0;

		if (reset_irq) {
			rc = FUNC16(bp, disable_msi);
			FUNC6(bp);
		}

		if (!rc)
			rc = FUNC1(bp);

		if (!rc)
			rc = FUNC11(bp);

		if (!rc)
			rc = FUNC7(bp, 0);

		if (rc) {
			FUNC8(bp);
			FUNC17(bp->dev);
			return rc;
		}
#ifdef BCM_CNIC
		mutex_lock(&bp->cnic_lock);
		/* Let cnic know about the new status block. */
		if (bp->cnic_eth_dev.drv_state & CNIC_DRV_STATE_REGD)
			bnx2_setup_cnic_irq_info(bp);
		mutex_unlock(&bp->cnic_lock);
#endif
		FUNC9(bp, true);
	}
	return 0;
}