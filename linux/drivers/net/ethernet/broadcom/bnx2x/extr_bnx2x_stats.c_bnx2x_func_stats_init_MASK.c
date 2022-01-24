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
struct host_func_stats {int dummy; } ;
struct dmae_command {int dst_addr_lo; int len; int /*<<< orphan*/  comp_val; void* comp_addr_hi; void* comp_addr_lo; scalar_t__ dst_addr_hi; void* src_addr_hi; void* src_addr_lo; int /*<<< orphan*/  opcode; } ;
struct bnx2x {int func_stx; scalar_t__ executer_idx; struct dmae_command stats_dmae; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DMAE_COMP_PCI ; 
 int /*<<< orphan*/  DMAE_COMP_VAL ; 
 int /*<<< orphan*/  DMAE_DST_GRC ; 
 int /*<<< orphan*/  DMAE_SRC_PCI ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,scalar_t__*) ; 
 scalar_t__* func_stats ; 
 int /*<<< orphan*/  FUNC6 (struct dmae_command*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* stats_comp ; 

__attribute__((used)) static void FUNC7(struct bnx2x *bp)
{
	struct dmae_command *dmae = &bp->stats_dmae;
	u32 *stats_comp = FUNC4(bp, stats_comp);

	/* sanity */
	if (!bp->func_stx) {
		FUNC0("BUG!\n");
		return;
	}

	bp->executer_idx = 0;
	FUNC6(dmae, 0, sizeof(struct dmae_command));

	dmae->opcode = FUNC3(bp, DMAE_SRC_PCI, DMAE_DST_GRC,
					 true, DMAE_COMP_PCI);
	dmae->src_addr_lo = FUNC2(FUNC5(bp, func_stats));
	dmae->src_addr_hi = FUNC1(FUNC5(bp, func_stats));
	dmae->dst_addr_lo = bp->func_stx >> 2;
	dmae->dst_addr_hi = 0;
	dmae->len = sizeof(struct host_func_stats) >> 2;
	dmae->comp_addr_lo = FUNC2(FUNC5(bp, stats_comp));
	dmae->comp_addr_hi = FUNC1(FUNC5(bp, stats_comp));
	dmae->comp_val = DMAE_COMP_VAL;

	*stats_comp = 0;
}