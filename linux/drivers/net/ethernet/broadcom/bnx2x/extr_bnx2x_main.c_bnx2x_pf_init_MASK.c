#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
struct event_ring_data {int /*<<< orphan*/  sb_id; int /*<<< orphan*/  index_id; int /*<<< orphan*/  producer; TYPE_4__ base_addr; TYPE_1__ member_0; } ;
struct cmng_struct_per_port {int dummy; } ;
struct bnx2x_func_init_params {int spq_active; int pf_id; int func_id; int /*<<< orphan*/  spq_prod; int /*<<< orphan*/  spq_map; int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {scalar_t__ pmf; } ;
struct TYPE_6__ {int /*<<< orphan*/  line_speed; } ;
struct bnx2x {int /*<<< orphan*/  eq_prod; int /*<<< orphan*/  eq_mapping; int /*<<< orphan*/  cmng; TYPE_3__ port; TYPE_2__ link_vars; int /*<<< orphan*/  spq_prod_idx; int /*<<< orphan*/  spq_mapping; } ;

/* Variables and functions */
 int BNX2X_IGU_STAS_MSG_PF_CNT ; 
 int BNX2X_IGU_STAS_MSG_VF_CNT ; 
 int FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  DEF_SB_ID ; 
 int /*<<< orphan*/  HC_SP_INDEX_EQ_CONS ; 
 scalar_t__ IGU_REG_STATISTIC_NUM_MESSAGE_SENT ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPEED_10000 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,struct bnx2x_func_init_params*) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bnx2x*,struct event_ring_data*,int) ; 

__attribute__((used)) static void FUNC14(struct bnx2x *bp)
{
	struct bnx2x_func_init_params func_init = {0};
	struct event_ring_data eq_data = { 0 };

	if (!FUNC3(bp)) {
		/* reset IGU PF statistics: MSIX + ATTN */
		/* PF */
		FUNC5(bp, IGU_REG_STATISTIC_NUM_MESSAGE_SENT +
			   BNX2X_IGU_STAS_MSG_VF_CNT*4 +
			   (FUNC4(bp) ?
				FUNC0(bp) : FUNC2(bp))*4, 0);
		/* ATTN */
		FUNC5(bp, IGU_REG_STATISTIC_NUM_MESSAGE_SENT +
			   BNX2X_IGU_STAS_MSG_VF_CNT*4 +
			   BNX2X_IGU_STAS_MSG_PF_CNT*4 +
			   (FUNC4(bp) ?
				FUNC0(bp) : FUNC2(bp))*4, 0);
	}

	func_init.spq_active = true;
	func_init.pf_id = FUNC0(bp);
	func_init.func_id = FUNC0(bp);
	func_init.spq_map = bp->spq_mapping;
	func_init.spq_prod = bp->spq_prod_idx;

	FUNC9(bp, &func_init);

	FUNC11(&(bp->cmng), 0, sizeof(struct cmng_struct_per_port));

	/*
	 * Congestion management values depend on the link rate
	 * There is no active link so initial link rate is set to 10 Gbps.
	 * When the link comes up The congestion management values are
	 * re-calculated according to the actual link rate.
	 */
	bp->link_vars.line_speed = SPEED_10000;
	FUNC8(bp, true, FUNC10(bp));

	/* Only the PMF sets the HW */
	if (bp->port.pmf)
		FUNC12(bp, &bp->cmng, FUNC1(bp));

	/* init Event Queue - PCI bus guarantees correct endianity*/
	eq_data.base_addr.hi = FUNC6(bp->eq_mapping);
	eq_data.base_addr.lo = FUNC7(bp->eq_mapping);
	eq_data.producer = bp->eq_prod;
	eq_data.index_id = HC_SP_INDEX_EQ_CONS;
	eq_data.sb_id = DEF_SB_ID;
	FUNC13(bp, &eq_data, FUNC0(bp));
}