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
struct bnxt {int /*<<< orphan*/  net_stats_prev; scalar_t__ bnapi; int /*<<< orphan*/  pdev; int /*<<< orphan*/  state; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  BNXT_STATE_IN_FW_RESET ; 
 int /*<<< orphan*/  BNXT_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*) ; 
 scalar_t__ FUNC4 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnxt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC11 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct bnxt *bp, bool irq_re_init,
			     bool link_re_init)
{
	/* Close the VF-reps before closing PF */
	if (FUNC0(bp))
		FUNC11(bp);

	/* Change device state to avoid TX queue wake up's */
	FUNC10(bp);

	FUNC12(BNXT_STATE_OPEN, &bp->state);
	FUNC17();
	while (FUNC4(bp))
		FUNC14(20);

	/* Flush rings and and disable interrupts */
	FUNC9(bp, irq_re_init);

	/* TODO CHIMP_FW: Link/PHY related cleanup if (link_re_init) */

	FUNC1(bp);
	FUNC3(bp);
	FUNC13(&bp->timer);
	if (FUNC18(BNXT_STATE_IN_FW_RESET, &bp->state) &&
	    FUNC16(bp->pdev))
		FUNC15(bp->pdev);

	FUNC7(bp);

	/* Save ring stats before shutdown */
	if (bp->bnapi)
		FUNC8(bp, &bp->net_stats_prev);
	if (irq_re_init) {
		FUNC5(bp);
		FUNC2(bp);
	}
	FUNC6(bp, irq_re_init);
}