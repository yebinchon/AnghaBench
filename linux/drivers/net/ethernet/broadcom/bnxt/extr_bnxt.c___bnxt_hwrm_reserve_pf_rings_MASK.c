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
typedef  int u32 ;
struct hwrm_func_cfg_input {int /*<<< orphan*/  enables; void* num_vnics; void* num_stat_ctxs; void* num_rsscos_ctxs; void* num_hw_ring_grps; void* num_cmpl_rings; void* num_msix; void* num_rx_rings; void* num_tx_rings; void* fid; } ;
struct bnxt {int flags; } ;

/* Variables and functions */
 int BNXT_FLAG_CHIP_P5 ; 
 int BNXT_FLAG_NEW_RSS_CAP ; 
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int FUNC1 (int,int) ; 
 int FUNC_CFG_REQ_ENABLES_NUM_CMPL_RINGS ; 
 int FUNC_CFG_REQ_ENABLES_NUM_HW_RING_GRPS ; 
 int FUNC_CFG_REQ_ENABLES_NUM_MSIX ; 
 int FUNC_CFG_REQ_ENABLES_NUM_RSSCOS_CTXS ; 
 int FUNC_CFG_REQ_ENABLES_NUM_RX_RINGS ; 
 int FUNC_CFG_REQ_ENABLES_NUM_STAT_CTXS ; 
 int FUNC_CFG_REQ_ENABLES_NUM_TX_RINGS ; 
 int FUNC_CFG_REQ_ENABLES_NUM_VNICS ; 
 int /*<<< orphan*/  HWRM_FUNC_CFG ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,struct hwrm_func_cfg_input*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (struct bnxt*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct bnxt *bp, struct hwrm_func_cfg_input *req,
			     int tx_rings, int rx_rings, int ring_grps,
			     int cp_rings, int stats, int vnics)
{
	u32 enables = 0;

	FUNC2(bp, req, HWRM_FUNC_CFG, -1, -1);
	req->fid = FUNC4(0xffff);
	enables |= tx_rings ? FUNC_CFG_REQ_ENABLES_NUM_TX_RINGS : 0;
	req->num_tx_rings = FUNC4(tx_rings);
	if (FUNC0(bp)) {
		enables |= rx_rings ? FUNC_CFG_REQ_ENABLES_NUM_RX_RINGS : 0;
		enables |= stats ? FUNC_CFG_REQ_ENABLES_NUM_STAT_CTXS : 0;
		if (bp->flags & BNXT_FLAG_CHIP_P5) {
			enables |= cp_rings ? FUNC_CFG_REQ_ENABLES_NUM_MSIX : 0;
			enables |= tx_rings + ring_grps ?
				   FUNC_CFG_REQ_ENABLES_NUM_CMPL_RINGS : 0;
			enables |= rx_rings ?
				FUNC_CFG_REQ_ENABLES_NUM_RSSCOS_CTXS : 0;
		} else {
			enables |= cp_rings ?
				   FUNC_CFG_REQ_ENABLES_NUM_CMPL_RINGS : 0;
			enables |= ring_grps ?
				   FUNC_CFG_REQ_ENABLES_NUM_HW_RING_GRPS |
				   FUNC_CFG_REQ_ENABLES_NUM_RSSCOS_CTXS : 0;
		}
		enables |= vnics ? FUNC_CFG_REQ_ENABLES_NUM_VNICS : 0;

		req->num_rx_rings = FUNC4(rx_rings);
		if (bp->flags & BNXT_FLAG_CHIP_P5) {
			req->num_cmpl_rings = FUNC4(tx_rings + ring_grps);
			req->num_msix = FUNC4(cp_rings);
			req->num_rsscos_ctxs =
				FUNC4(FUNC1(ring_grps, 64));
		} else {
			req->num_cmpl_rings = FUNC4(cp_rings);
			req->num_hw_ring_grps = FUNC4(ring_grps);
			req->num_rsscos_ctxs = FUNC4(1);
			if (!(bp->flags & BNXT_FLAG_NEW_RSS_CAP) &&
			    FUNC3(bp))
				req->num_rsscos_ctxs =
					FUNC4(ring_grps + 1);
		}
		req->num_stat_ctxs = FUNC4(stats);
		req->num_vnics = FUNC4(vnics);
	}
	req->enables = FUNC5(enables);
}