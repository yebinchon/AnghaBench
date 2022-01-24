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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int bc_ver; scalar_t__ shmem_base; } ;
struct bnx2x {TYPE_1__ common; int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; } ;
typedef  int __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 scalar_t__ MCPR_TRACE_BUFFER_SIZE ; 
 scalar_t__ MCP_REG_MCPR_CPU_PROGRAM_COUNTER ; 
 scalar_t__ MFW_TRACE_SIGNATURE ; 
 scalar_t__ FUNC4 (struct bnx2x*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct bnx2x*) ; 
 scalar_t__ FUNC6 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  other_shmem_base_addr ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,...) ; 

void FUNC12(struct bnx2x *bp, const char *lvl)
{
	u32 addr, val;
	u32 mark, offset;
	__be32 data[9];
	int word;
	u32 trace_shmem_base;
	if (FUNC1(bp)) {
		FUNC0("NO MCP - can not dump\n");
		return;
	}
	FUNC8(lvl, bp->dev, "bc %d.%d.%d\n",
		(bp->common.bc_ver & 0xff0000) >> 16,
		(bp->common.bc_ver & 0xff00) >> 8,
		(bp->common.bc_ver & 0xff));

	if (FUNC9(bp->pdev)) {
		FUNC0("Cannot dump MCP info while in PCI error\n");
		return;
	}

	val = FUNC4(bp, MCP_REG_MCPR_CPU_PROGRAM_COUNTER);
	if (val == FUNC4(bp, MCP_REG_MCPR_CPU_PROGRAM_COUNTER))
		FUNC0("%s" "MCP PC at 0x%x\n", lvl, val);

	if (FUNC2(bp) == 0)
		trace_shmem_base = bp->common.shmem_base;
	else
		trace_shmem_base = FUNC6(bp, other_shmem_base_addr);

	/* sanity */
	if (trace_shmem_base < FUNC3(bp) + MCPR_TRACE_BUFFER_SIZE ||
	    trace_shmem_base >= FUNC3(bp) +
				FUNC5(bp)) {
		FUNC0("Unable to dump trace buffer (mark %x)\n",
			  trace_shmem_base);
		return;
	}

	addr = trace_shmem_base - MCPR_TRACE_BUFFER_SIZE;

	/* validate TRCB signature */
	mark = FUNC4(bp, addr);
	if (mark != MFW_TRACE_SIGNATURE) {
		FUNC0("Trace buffer signature is missing.");
		return ;
	}

	/* read cyclic buffer pointer */
	addr += 4;
	mark = FUNC4(bp, addr);
	mark = FUNC3(bp) + ((mark + 0x3) & ~0x3) - 0x08000000;
	if (mark >= trace_shmem_base || mark < addr + 4) {
		FUNC0("Mark doesn't fall inside Trace Buffer\n");
		return;
	}
	FUNC11("%s" "begin fw dump (mark 0x%x)\n", lvl, mark);

	FUNC11("%s", lvl);

	/* dump buffer after the mark */
	for (offset = mark; offset < trace_shmem_base; offset += 0x8*4) {
		for (word = 0; word < 8; word++)
			data[word] = FUNC7(FUNC4(bp, offset + 4*word));
		data[8] = 0x0;
		FUNC10("%s", (char *)data);
	}

	/* dump buffer before the mark */
	for (offset = addr + 4; offset <= mark; offset += 0x8*4) {
		for (word = 0; word < 8; word++)
			data[word] = FUNC7(FUNC4(bp, offset + 4*word));
		data[8] = 0x0;
		FUNC10("%s", (char *)data);
	}
	FUNC11("%s" "end of fw dump\n", lvl);
}