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
typedef  scalar_t__ u32 ;
struct dmae_command {int dst_addr_lo; int len; int comp_addr_lo; int comp_val; scalar_t__ comp_addr_hi; scalar_t__ dst_addr_hi; int /*<<< orphan*/  src_addr_hi; int /*<<< orphan*/  src_addr_lo; scalar_t__ opcode; } ;
struct bnx2x {scalar_t__ func_stx; scalar_t__ executer_idx; int /*<<< orphan*/  func_stats; struct dmae_command stats_dmae; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  DMAE_COMP_GRC ; 
 scalar_t__ DMAE_COMP_VAL ; 
 int /*<<< orphan*/  DMAE_DST_GRC ; 
 int DMAE_REG_CMD_MEM ; 
 int /*<<< orphan*/  DMAE_SRC_PCI ; 
 int FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,struct dmae_command*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,struct dmae_command*,int) ; 
 scalar_t__* FUNC9 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*,struct dmae_command) ; 
 int* dmae_reg_go_c ; 
 int /*<<< orphan*/  func_stats ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct dmae_command*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* stats_comp ; 

__attribute__((used)) static void FUNC13(struct bnx2x *bp)
{
	struct dmae_command *dmae = &bp->stats_dmae;
	u32 *stats_comp = FUNC9(bp, stats_comp);

	*stats_comp = DMAE_COMP_VAL;
	if (FUNC1(bp))
		return;

	/* Update MCP's statistics if possible */
	if (bp->func_stx)
		FUNC11(FUNC9(bp, func_stats), &bp->func_stats,
		       sizeof(bp->func_stats));

	/* loader */
	if (bp->executer_idx) {
		int loader_idx = FUNC2(bp);
		u32 opcode =  FUNC5(bp, DMAE_SRC_PCI, DMAE_DST_GRC,
						 true, DMAE_COMP_GRC);
		opcode = FUNC6(opcode);

		FUNC12(dmae, 0, sizeof(struct dmae_command));
		dmae->opcode = opcode;
		dmae->src_addr_lo = FUNC4(FUNC10(bp, dmae[0]));
		dmae->src_addr_hi = FUNC3(FUNC10(bp, dmae[0]));
		dmae->dst_addr_lo = (DMAE_REG_CMD_MEM +
				     sizeof(struct dmae_command) *
				     (loader_idx + 1)) >> 2;
		dmae->dst_addr_hi = 0;
		dmae->len = sizeof(struct dmae_command) >> 2;
		if (FUNC0(bp))
			dmae->len--;
		dmae->comp_addr_lo = dmae_reg_go_c[loader_idx + 1] >> 2;
		dmae->comp_addr_hi = 0;
		dmae->comp_val = 1;

		*stats_comp = 0;
		FUNC8(bp, dmae, loader_idx);

	} else if (bp->func_stx) {
		*stats_comp = 0;
		FUNC7(bp, dmae, stats_comp);
	}
}