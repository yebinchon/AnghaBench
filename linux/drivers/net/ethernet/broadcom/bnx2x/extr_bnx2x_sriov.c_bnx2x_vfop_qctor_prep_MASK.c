#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct bnx2x_virtf {int /*<<< orphan*/  leading_rss; int /*<<< orphan*/  abs_vfid; scalar_t__ spoofchk; int /*<<< orphan*/  fp_hsi; int /*<<< orphan*/  sp_cl_id; } ;
struct TYPE_12__ {void* fw_sb_id; int /*<<< orphan*/  tss_leading_cl_id; } ;
struct bnx2x_rxq_setup_params {int /*<<< orphan*/  max_tpa_queues; int /*<<< orphan*/  rss_engine_id; void* fw_sb_id; int /*<<< orphan*/  cl_qzone_id; } ;
struct TYPE_11__ {int /*<<< orphan*/  fp_hsi; int /*<<< orphan*/  stat_id; int /*<<< orphan*/  spcl_id; } ;
struct bnx2x_queue_setup_params {unsigned long flags; TYPE_6__ txq_params; struct bnx2x_rxq_setup_params rxq_params; TYPE_5__ gen_params; } ;
struct TYPE_10__ {unsigned long flags; void* fw_sb_id; } ;
struct TYPE_9__ {unsigned long flags; void* fw_sb_id; } ;
struct bnx2x_queue_init_params {int /*<<< orphan*/ * cxts; TYPE_4__ tx; TYPE_3__ rx; } ;
struct TYPE_7__ {struct bnx2x_queue_init_params init; } ;
struct TYPE_8__ {TYPE_1__ params; } ;
struct bnx2x_vf_queue_construct_params {struct bnx2x_queue_setup_params prep_qsetup; TYPE_2__ qstate; } ;
struct bnx2x_vf_queue {int /*<<< orphan*/  sb_idx; int /*<<< orphan*/  cxt; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_Q_FLG_ANTI_SPOOF ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_HC ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_HC_EN ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_STATS ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_TPA ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_TX_SEC ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_TX_SWITCH ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_ZERO_STATS ; 
 int /*<<< orphan*/  BNX2X_Q_TYPE_HAS_RX ; 
 int /*<<< orphan*/  BNX2X_Q_TYPE_HAS_TX ; 
 int /*<<< orphan*/  BNX2X_VF_MAX_TPA_AGG_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 
 void* FUNC4 (struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x_virtf*,struct bnx2x_vf_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x_virtf*,struct bnx2x_vf_queue*) ; 

void FUNC7(struct bnx2x *bp,
			   struct bnx2x_virtf *vf,
			   struct bnx2x_vf_queue *q,
			   struct bnx2x_vf_queue_construct_params *p,
			   unsigned long q_type)
{
	struct bnx2x_queue_init_params *init_p = &p->qstate.params.init;
	struct bnx2x_queue_setup_params *setup_p = &p->prep_qsetup;

	/* INIT */

	/* Enable host coalescing in the transition to INIT state */
	if (FUNC3(BNX2X_Q_FLG_HC, &init_p->rx.flags))
		FUNC2(BNX2X_Q_FLG_HC_EN, &init_p->rx.flags);

	if (FUNC3(BNX2X_Q_FLG_HC, &init_p->tx.flags))
		FUNC2(BNX2X_Q_FLG_HC_EN, &init_p->tx.flags);

	/* FW SB ID */
	init_p->rx.fw_sb_id = FUNC4(vf, q->sb_idx);
	init_p->tx.fw_sb_id = FUNC4(vf, q->sb_idx);

	/* context */
	init_p->cxts[0] = q->cxt;

	/* SETUP */

	/* Setup-op general parameters */
	setup_p->gen_params.spcl_id = vf->sp_cl_id;
	setup_p->gen_params.stat_id = FUNC6(vf, q);
	setup_p->gen_params.fp_hsi = vf->fp_hsi;

	/* Setup-op flags:
	 * collect statistics, zero statistics, local-switching, security,
	 * OV for Flex10, RSS and MCAST for leading
	 */
	if (FUNC3(BNX2X_Q_FLG_STATS, &setup_p->flags))
		FUNC2(BNX2X_Q_FLG_ZERO_STATS, &setup_p->flags);

	/* for VFs, enable tx switching, bd coherency, and mac address
	 * anti-spoofing
	 */
	FUNC2(BNX2X_Q_FLG_TX_SWITCH, &setup_p->flags);
	FUNC2(BNX2X_Q_FLG_TX_SEC, &setup_p->flags);
	if (vf->spoofchk)
		FUNC2(BNX2X_Q_FLG_ANTI_SPOOF, &setup_p->flags);
	else
		FUNC1(BNX2X_Q_FLG_ANTI_SPOOF, &setup_p->flags);

	/* Setup-op rx parameters */
	if (FUNC3(BNX2X_Q_TYPE_HAS_RX, &q_type)) {
		struct bnx2x_rxq_setup_params *rxq_p = &setup_p->rxq_params;

		rxq_p->cl_qzone_id = FUNC5(vf, q);
		rxq_p->fw_sb_id = FUNC4(vf, q->sb_idx);
		rxq_p->rss_engine_id = FUNC0(vf->abs_vfid);

		if (FUNC3(BNX2X_Q_FLG_TPA, &setup_p->flags))
			rxq_p->max_tpa_queues = BNX2X_VF_MAX_TPA_AGG_QUEUES;
	}

	/* Setup-op tx parameters */
	if (FUNC3(BNX2X_Q_TYPE_HAS_TX, &q_type)) {
		setup_p->txq_params.tss_leading_cl_id = vf->leading_rss;
		setup_p->txq_params.fw_sb_id = FUNC4(vf, q->sb_idx);
	}
}