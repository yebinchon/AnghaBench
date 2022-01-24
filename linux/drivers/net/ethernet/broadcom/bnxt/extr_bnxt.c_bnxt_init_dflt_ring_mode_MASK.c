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
struct bnxt {TYPE_1__* dev; int /*<<< orphan*/  flags; scalar_t__ tx_nr_rings; scalar_t__ tx_nr_rings_per_tc; } ;
struct TYPE_2__ {int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_FLAG_RFS ; 
 int /*<<< orphan*/  NETIF_F_NTUPLE ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int FUNC1 (struct bnxt*) ; 
 scalar_t__ FUNC2 (struct bnxt*) ; 
 scalar_t__ FUNC3 (struct bnxt*) ; 
 int FUNC4 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC8(struct bnxt *bp)
{
	int rc;

	if (bp->tx_nr_rings)
		return 0;

	FUNC6(bp);
	FUNC0(bp);
	rc = FUNC4(bp, true);
	if (rc) {
		FUNC7(bp->dev, "Not enough rings available.\n");
		goto init_dflt_ring_err;
	}
	rc = FUNC1(bp);
	if (rc)
		goto init_dflt_ring_err;

	bp->tx_nr_rings_per_tc = bp->tx_nr_rings;
	if (FUNC3(bp) && FUNC2(bp)) {
		bp->flags |= BNXT_FLAG_RFS;
		bp->dev->features |= NETIF_F_NTUPLE;
	}
init_dflt_ring_err:
	FUNC5(bp, rc);
	return rc;
}