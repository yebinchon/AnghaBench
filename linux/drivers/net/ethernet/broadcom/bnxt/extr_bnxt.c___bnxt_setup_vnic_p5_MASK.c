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
typedef  int /*<<< orphan*/  u16 ;
struct bnxt {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  rsscos_nr_ctxs; int /*<<< orphan*/  rx_nr_rings; } ;

/* Variables and functions */
 int BNXT_FLAG_AGG_RINGS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int FUNC1 (struct bnxt*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bnxt*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct bnxt*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bnxt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static int FUNC6(struct bnxt *bp, u16 vnic_id)
{
	int rc, i, nr_ctxs;

	nr_ctxs = FUNC0(bp->rx_nr_rings, 64);
	for (i = 0; i < nr_ctxs; i++) {
		rc = FUNC2(bp, vnic_id, i);
		if (rc) {
			FUNC5(bp->dev, "hwrm vnic %d ctx %d alloc failure rc: %x\n",
				   vnic_id, i, rc);
			break;
		}
		bp->rsscos_nr_ctxs++;
	}
	if (i < nr_ctxs)
		return -ENOMEM;

	rc = FUNC4(bp, vnic_id, true);
	if (rc) {
		FUNC5(bp->dev, "hwrm vnic %d set rss failure rc: %d\n",
			   vnic_id, rc);
		return rc;
	}
	rc = FUNC1(bp, vnic_id);
	if (rc) {
		FUNC5(bp->dev, "hwrm vnic %d cfg failure rc: %x\n",
			   vnic_id, rc);
		return rc;
	}
	if (bp->flags & BNXT_FLAG_AGG_RINGS) {
		rc = FUNC3(bp, vnic_id);
		if (rc) {
			FUNC5(bp->dev, "hwrm vnic %d set hds failure rc: %x\n",
				   vnic_id, rc);
		}
	}
	return rc;
}