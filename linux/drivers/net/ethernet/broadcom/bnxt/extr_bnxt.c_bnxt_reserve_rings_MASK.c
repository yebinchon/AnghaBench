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
struct bnxt {scalar_t__ total_irqs; int tx_nr_rings_per_tc; int tx_nr_rings; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int ENOMEM ; 
 int FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 scalar_t__ FUNC3 (struct bnxt*) ; 
 int FUNC4 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct bnxt *bp, bool irq_re_init)
{
	int tcs = FUNC9(bp->dev);
	bool irq_cleared = false;
	int rc;

	if (!FUNC5(bp))
		return 0;

	if (irq_re_init && FUNC0(bp) &&
	    FUNC3(bp) != bp->total_irqs) {
		FUNC7(bp);
		FUNC2(bp);
		irq_cleared = true;
	}
	rc = FUNC1(bp);
	if (irq_cleared) {
		if (!rc)
			rc = FUNC4(bp);
		FUNC6(bp, rc);
	}
	if (rc) {
		FUNC8(bp->dev, "ring reservation/IRQ init failure rc: %d\n", rc);
		return rc;
	}
	if (tcs && (bp->tx_nr_rings_per_tc * tcs != bp->tx_nr_rings)) {
		FUNC8(bp->dev, "tx ring reservation failure\n");
		FUNC10(bp->dev);
		bp->tx_nr_rings_per_tc = bp->tx_nr_rings;
		return -ENOMEM;
	}
	return 0;
}