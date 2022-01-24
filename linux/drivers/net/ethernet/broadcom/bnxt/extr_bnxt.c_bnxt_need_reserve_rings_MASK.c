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
struct bnxt_hw_resc {scalar_t__ resv_tx_rings; int resv_rx_rings; int resv_cp_rings; int resv_vnics; int resv_stat_ctxs; int resv_hw_ring_grps; int resv_irqs; } ;
struct bnxt {int rx_nr_rings; int hwrm_spec_code; scalar_t__ tx_nr_rings; int flags; struct bnxt_hw_resc hw_resc; } ;

/* Variables and functions */
 int BNXT_FLAG_AGG_RINGS ; 
 int BNXT_FLAG_CHIP_P5 ; 
 int BNXT_FLAG_RFS ; 
 scalar_t__ FUNC0 (struct bnxt*) ; 
 scalar_t__ FUNC1 (struct bnxt*) ; 
 int FUNC2 (struct bnxt*) ; 
 int FUNC3 (struct bnxt*) ; 
 int FUNC4 (struct bnxt*) ; 

__attribute__((used)) static bool FUNC5(struct bnxt *bp)
{
	struct bnxt_hw_resc *hw_resc = &bp->hw_resc;
	int cp = FUNC2(bp);
	int nq = FUNC4(bp);
	int rx = bp->rx_nr_rings, stat;
	int vnic = 1, grp = rx;

	if (bp->hwrm_spec_code < 0x10601)
		return false;

	if (hw_resc->resv_tx_rings != bp->tx_nr_rings)
		return true;

	if ((bp->flags & BNXT_FLAG_RFS) && !(bp->flags & BNXT_FLAG_CHIP_P5))
		vnic = rx + 1;
	if (bp->flags & BNXT_FLAG_AGG_RINGS)
		rx <<= 1;
	stat = FUNC3(bp);
	if (FUNC0(bp) &&
	    (hw_resc->resv_rx_rings != rx || hw_resc->resv_cp_rings != cp ||
	     hw_resc->resv_vnics != vnic || hw_resc->resv_stat_ctxs != stat ||
	     (hw_resc->resv_hw_ring_grps != grp &&
	      !(bp->flags & BNXT_FLAG_CHIP_P5))))
		return true;
	if ((bp->flags & BNXT_FLAG_CHIP_P5) && FUNC1(bp) &&
	    hw_resc->resv_irqs != nq)
		return true;
	return false;
}