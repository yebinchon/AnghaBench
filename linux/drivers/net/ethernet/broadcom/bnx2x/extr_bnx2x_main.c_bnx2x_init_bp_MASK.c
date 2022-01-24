#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int expires; } ;
struct TYPE_6__ {int /*<<< orphan*/  phy_mutex; } ;
struct bnx2x {int drv_info_mng_owner; int fw_seq; int disable_tpa; int dropless_fc; int tx_ticks; int rx_ticks; int current_interval; int max_cos; int min_msix_vec_cnt; int dump_preset_idx; int /*<<< orphan*/  cnic_base_cl_id; TYPE_4__ timer; int /*<<< orphan*/  rx_ring_size; int /*<<< orphan*/  tx_ring_size; int /*<<< orphan*/  mrrs; TYPE_3__* dev; TYPE_2__* pdev; int /*<<< orphan*/  iov_task; int /*<<< orphan*/  period_task; int /*<<< orphan*/  sp_rtnl_task; int /*<<< orphan*/  sp_task; int /*<<< orphan*/  vlan_reg; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  drv_info_mutex; int /*<<< orphan*/  fw_mb_mutex; TYPE_1__ port; } ;
struct TYPE_10__ {int /*<<< orphan*/  drv_mb_header; } ;
struct TYPE_8__ {int hw_features; int features; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BNX2X_BTR ; 
 int /*<<< orphan*/  BNX2X_DCBX_ENABLED_OFF ; 
 int /*<<< orphan*/  BNX2X_DCBX_ENABLED_ON_NEG_ON ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BNX2X_MULTI_TX_COS_E1X ; 
 int BNX2X_MULTI_TX_COS_E2_E3A0 ; 
 int BNX2X_MULTI_TX_COS_E3B0 ; 
 int FUNC2 (struct bnx2x*) ; 
 size_t FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 size_t FUNC5 (struct bnx2x*) ; 
 scalar_t__ FUNC6 (struct bnx2x*) ; 
 scalar_t__ FUNC7 (struct bnx2x*) ; 
 scalar_t__ FUNC8 (struct bnx2x*) ; 
 scalar_t__ FUNC9 (struct bnx2x*) ; 
 scalar_t__ FUNC10 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2x*) ; 
 scalar_t__ FUNC13 (struct bnx2x*) ; 
 scalar_t__ FUNC14 (struct bnx2x*) ; 
 scalar_t__ FUNC15 (struct bnx2x*) ; 
 int DRV_MSG_SEQ_NUMBER_MASK ; 
 int /*<<< orphan*/  FP_SB_MAX_E1x ; 
 int /*<<< orphan*/  FP_SB_MAX_E2 ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct bnx2x*) ; 
 scalar_t__ FUNC19 (struct bnx2x*) ; 
 scalar_t__ FUNC20 (struct bnx2x*) ; 
 int /*<<< orphan*/  MAX_RX_AVAIL ; 
 int /*<<< orphan*/  MAX_TX_AVAIL ; 
 int NETIF_F_GRO_HW ; 
 int NETIF_F_LRO ; 
 scalar_t__ FUNC21 (struct bnx2x*,int /*<<< orphan*/ *********) ; 
 scalar_t__ FUNC22 (struct bnx2x*,int /*<<< orphan*/ ********) ; 
 int FUNC23 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC25 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC26 (struct bnx2x*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct bnx2x*) ; 
 int FUNC28 (struct bnx2x*) ; 
 int FUNC29 (struct bnx2x*) ; 
 int /*<<< orphan*/  bnx2x_iov_task ; 
 int /*<<< orphan*/  bnx2x_period_task ; 
 int FUNC30 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC31 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC32 (struct bnx2x*) ; 
 int /*<<< orphan*/  bnx2x_sp_rtnl_task ; 
 int /*<<< orphan*/  bnx2x_sp_task ; 
 int /*<<< orphan*/  bnx2x_timer ; 
 int /*<<< orphan*/ ********* dcbx_en ; 
 int /*<<< orphan*/ ******** dcbx_lldp_dcbx_stat_offset ; 
 int /*<<< orphan*/ ******** dcbx_lldp_params_offset ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,char*) ; 
 int disable_tpa ; 
 int dropless_fc ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 TYPE_5__* func_mb ; 
 int FUNC35 () ; 
 int jiffies ; 
 int /*<<< orphan*/  mrrs ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC39(struct bnx2x *bp)
{
	int func;
	int rc;

	FUNC36(&bp->port.phy_mutex);
	FUNC36(&bp->fw_mb_mutex);
	FUNC36(&bp->drv_info_mutex);
	FUNC37(&bp->stats_lock, 1);
	bp->drv_info_mng_owner = false;
	FUNC17(&bp->vlan_reg);

	FUNC16(&bp->sp_task, bnx2x_sp_task);
	FUNC16(&bp->sp_rtnl_task, bnx2x_sp_rtnl_task);
	FUNC16(&bp->period_task, bnx2x_period_task);
	FUNC16(&bp->iov_task, bnx2x_iov_task);
	if (FUNC19(bp)) {
		rc = FUNC29(bp);
		if (rc)
			return rc;
	} else {
		FUNC34(bp->dev->dev_addr);
	}

	FUNC32(bp);

	rc = FUNC24(bp);
	if (rc)
		return rc;

	FUNC31(bp);

	func = FUNC2(bp);

	/* need to reset chip if undi was active */
	if (FUNC19(bp) && !FUNC4(bp)) {
		/* init fw_seq */
		bp->fw_seq =
			FUNC23(bp, func_mb[FUNC3(bp)].drv_mb_header) &
							DRV_MSG_SEQ_NUMBER_MASK;
		FUNC0("fw_seq 0x%08x\n", bp->fw_seq);

		rc = FUNC30(bp);
		if (rc) {
			FUNC27(bp);
			return rc;
		}
	}

	if (FUNC13(bp))
		FUNC33(&bp->pdev->dev, "FPGA detected\n");

	if (FUNC4(bp) && (func == 0))
		FUNC33(&bp->pdev->dev, "MCP disabled, must load devices in order!\n");

	bp->disable_tpa = disable_tpa;
	bp->disable_tpa |= !!FUNC18(bp);
	/* Reduce memory usage in kdump environment by disabling TPA */
	bp->disable_tpa |= FUNC35();

	/* Set TPA flags */
	if (bp->disable_tpa) {
		bp->dev->hw_features &= ~(NETIF_F_LRO | NETIF_F_GRO_HW);
		bp->dev->features &= ~(NETIF_F_LRO | NETIF_F_GRO_HW);
	}

	if (FUNC6(bp))
		bp->dropless_fc = 0;
	else
		bp->dropless_fc = dropless_fc | FUNC28(bp);

	bp->mrrs = mrrs;

	bp->tx_ring_size = FUNC18(bp) ? 0 : MAX_TX_AVAIL;
	if (FUNC20(bp))
		bp->rx_ring_size = MAX_RX_AVAIL;

	/* make sure that the numbers are in the right granularity */
	bp->tx_ticks = (50 / BNX2X_BTR) * BNX2X_BTR;
	bp->rx_ticks = (25 / BNX2X_BTR) * BNX2X_BTR;

	bp->current_interval = FUNC14(bp) ? 5*HZ : HZ;

	FUNC38(&bp->timer, bnx2x_timer, 0);
	bp->timer.expires = jiffies + bp->current_interval;

	if (FUNC21(bp, &dcbx_lldp_params_offset) &&
	    FUNC21(bp, &dcbx_lldp_dcbx_stat_offset) &&
	    FUNC21(bp, dcbx_en) &&
	    FUNC22(bp, dcbx_lldp_params_offset) &&
	    FUNC22(bp, dcbx_lldp_dcbx_stat_offset) &&
	    FUNC22(bp, dcbx_en[FUNC5(bp)])) {
		FUNC26(bp, true, BNX2X_DCBX_ENABLED_ON_NEG_ON);
		FUNC25(bp);
	} else {
		FUNC26(bp, false, BNX2X_DCBX_ENABLED_OFF);
	}

	if (FUNC7(bp))
		bp->cnic_base_cl_id = FP_SB_MAX_E1x;
	else
		bp->cnic_base_cl_id = FP_SB_MAX_E2;

	/* multiple tx priority */
	if (FUNC20(bp))
		bp->max_cos = 1;
	else if (FUNC7(bp))
		bp->max_cos = BNX2X_MULTI_TX_COS_E1X;
	else if (FUNC8(bp) || FUNC9(bp))
		bp->max_cos = BNX2X_MULTI_TX_COS_E2_E3A0;
	else if (FUNC10(bp))
		bp->max_cos = BNX2X_MULTI_TX_COS_E3B0;
	else
		FUNC1("unknown chip %x revision %x\n",
			  FUNC11(bp), FUNC12(bp));
	FUNC0("set bp->max_cos to %d\n", bp->max_cos);

	/* We need at least one default status block for slow-path events,
	 * second status block for the L2 queue, and a third status block for
	 * CNIC if supported.
	 */
	if (FUNC20(bp))
		bp->min_msix_vec_cnt = 1;
	else if (FUNC15(bp))
		bp->min_msix_vec_cnt = 3;
	else /* PF w/o cnic */
		bp->min_msix_vec_cnt = 2;
	FUNC0("bp->min_msix_vec_cnt %d", bp->min_msix_vec_cnt);

	bp->dump_preset_idx = 1;

	return rc;
}