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
typedef  int u8 ;
typedef  void* u16 ;
struct rxq_pause_params {int sge_th_hi; scalar_t__ bd_th_hi; int rcq_th_hi; int pri_map; int /*<<< orphan*/  rcq_th_lo; int /*<<< orphan*/  bd_th_lo; int /*<<< orphan*/  sge_th_lo; } ;
struct bnx2x_rxq_setup_params {int max_sges_pkt; int /*<<< orphan*/  silent_removal_mask; int /*<<< orphan*/  silent_removal_value; int /*<<< orphan*/  sb_cq_index; int /*<<< orphan*/  fw_sb_id; int /*<<< orphan*/  cache_line_log; int /*<<< orphan*/  max_tpa_queues; void* mcast_engine_id; void* rss_engine_id; void* sge_buf_sz; void* tpa_agg_sz; int /*<<< orphan*/  cl_qzone_id; scalar_t__ buf_sz; scalar_t__ rcq_np_map; scalar_t__ rcq_map; int /*<<< orphan*/  sge_map; int /*<<< orphan*/  dscr_map; } ;
struct bnx2x_fastpath {scalar_t__ mode; int /*<<< orphan*/  fw_sb_id; int /*<<< orphan*/  cl_qzone_id; scalar_t__ rx_buf_size; scalar_t__ rx_comp_mapping; int /*<<< orphan*/  rx_sge_mapping; int /*<<< orphan*/  rx_desc_mapping; } ;
struct bnx2x {scalar_t__ rx_ring_size; int /*<<< orphan*/  afex_def_vlan_tag; scalar_t__ dropless_fc; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 scalar_t__ BCM_PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 scalar_t__ BNX2X_FW_RX_ALIGN_END ; 
 scalar_t__ BNX2X_FW_RX_ALIGN_START ; 
 int /*<<< orphan*/  BNX2X_RX_ALIGN_SHIFT ; 
 void* FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int FW_PREFETCH_CNT ; 
 int /*<<< orphan*/  HC_INDEX_ETH_RX_CQ_CONS ; 
 int /*<<< orphan*/  HC_SP_INDEX_ETH_FCOE_RX_CQ_CONS ; 
 scalar_t__ IP_HEADER_ALIGNMENT_PADDING ; 
 scalar_t__ FUNC4 (struct bnx2x_fastpath*) ; 
 scalar_t__ FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 int MAX_RCQ_DESC_CNT ; 
 int MAX_RX_SGE_CNT ; 
 int NUM_RCQ_RINGS ; 
 int NUM_RX_SGE_PAGES ; 
 int PAGES_PER_SGE ; 
 int PAGES_PER_SGE_SHIFT ; 
 int FUNC7 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*) ; 
 int /*<<< orphan*/  SGE_PAGES ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int SGE_PAGE_SHIFT ; 
 int FUNC10 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x*) ; 
 void* TPA_AGG_SIZE ; 
 scalar_t__ TPA_MODE_DISABLED ; 
 int /*<<< orphan*/  VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static void FUNC14(struct bnx2x *bp,
	struct bnx2x_fastpath *fp, struct rxq_pause_params *pause,
	struct bnx2x_rxq_setup_params *rxq_init)
{
	u8 max_sge = 0;
	u16 sge_sz = 0;
	u16 tpa_agg_size = 0;

	if (fp->mode != TPA_MODE_DISABLED) {
		pause->sge_th_lo = FUNC11(bp);
		pause->sge_th_hi = FUNC10(bp);

		/* validate SGE ring has enough to cross high threshold */
		FUNC12(bp->dropless_fc &&
				pause->sge_th_hi + FW_PREFETCH_CNT >
				MAX_RX_SGE_CNT * NUM_RX_SGE_PAGES);

		tpa_agg_size = TPA_AGG_SIZE;
		max_sge = FUNC9(bp->dev->mtu) >>
			SGE_PAGE_SHIFT;
		max_sge = ((max_sge + PAGES_PER_SGE - 1) &
			  (~(PAGES_PER_SGE-1))) >> PAGES_PER_SGE_SHIFT;
		sge_sz = (u16)FUNC13(u32, SGE_PAGES, 0xffff);
	}

	/* pause - not for e1 */
	if (!FUNC3(bp)) {
		pause->bd_th_lo = FUNC1(bp);
		pause->bd_th_hi = FUNC0(bp);

		pause->rcq_th_lo = FUNC8(bp);
		pause->rcq_th_hi = FUNC7(bp);
		/*
		 * validate that rings have enough entries to cross
		 * high thresholds
		 */
		FUNC12(bp->dropless_fc &&
				pause->bd_th_hi + FW_PREFETCH_CNT >
				bp->rx_ring_size);
		FUNC12(bp->dropless_fc &&
				pause->rcq_th_hi + FW_PREFETCH_CNT >
				NUM_RCQ_RINGS * MAX_RCQ_DESC_CNT);

		pause->pri_map = 1;
	}

	/* rxq setup */
	rxq_init->dscr_map = fp->rx_desc_mapping;
	rxq_init->sge_map = fp->rx_sge_mapping;
	rxq_init->rcq_map = fp->rx_comp_mapping;
	rxq_init->rcq_np_map = fp->rx_comp_mapping + BCM_PAGE_SIZE;

	/* This should be a maximum number of data bytes that may be
	 * placed on the BD (not including paddings).
	 */
	rxq_init->buf_sz = fp->rx_buf_size - BNX2X_FW_RX_ALIGN_START -
			   BNX2X_FW_RX_ALIGN_END - IP_HEADER_ALIGNMENT_PADDING;

	rxq_init->cl_qzone_id = fp->cl_qzone_id;
	rxq_init->tpa_agg_sz = tpa_agg_size;
	rxq_init->sge_buf_sz = sge_sz;
	rxq_init->max_sges_pkt = max_sge;
	rxq_init->rss_engine_id = FUNC2(bp);
	rxq_init->mcast_engine_id = FUNC2(bp);

	/* Maximum number or simultaneous TPA aggregation for this Queue.
	 *
	 * For PF Clients it should be the maximum available number.
	 * VF driver(s) may want to define it to a smaller value.
	 */
	rxq_init->max_tpa_queues = FUNC6(bp);

	rxq_init->cache_line_log = BNX2X_RX_ALIGN_SHIFT;
	rxq_init->fw_sb_id = fp->fw_sb_id;

	if (FUNC4(fp))
		rxq_init->sb_cq_index = HC_SP_INDEX_ETH_FCOE_RX_CQ_CONS;
	else
		rxq_init->sb_cq_index = HC_INDEX_ETH_RX_CQ_CONS;
	/* configure silent vlan removal
	 * if multi function mode is afex, then mask default vlan
	 */
	if (FUNC5(bp)) {
		rxq_init->silent_removal_value = bp->afex_def_vlan_tag;
		rxq_init->silent_removal_mask = VLAN_VID_MASK;
	}
}