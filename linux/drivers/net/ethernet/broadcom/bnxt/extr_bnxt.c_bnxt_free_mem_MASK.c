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
struct bnxt {int /*<<< orphan*/ * bnapi; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/ * tx_ring_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct bnxt *bp, bool irq_re_init)
{
	FUNC7(bp);
	FUNC6(bp);
	FUNC5(bp);
	FUNC1(bp);
	FUNC2(bp, irq_re_init);
	if (irq_re_init) {
		FUNC4(bp);
		FUNC3(bp);
		FUNC8(bp);
		FUNC9(bp->tx_ring_map);
		bp->tx_ring_map = NULL;
		FUNC9(bp->tx_ring);
		bp->tx_ring = NULL;
		FUNC9(bp->rx_ring);
		bp->rx_ring = NULL;
		FUNC9(bp->bnapi);
		bp->bnapi = NULL;
	} else {
		FUNC0(bp);
	}
}