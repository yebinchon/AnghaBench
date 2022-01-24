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
typedef  int u64 ;
struct rvu_block {int /*<<< orphan*/  lookup_reg; int /*<<< orphan*/  addr; } ;
struct rvu {int dummy; } ;

/* Variables and functions */
 unsigned long long FUNC0 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct rvu *rvu, struct rvu_block *block,
			   int pcifunc, int slot)
{
	u64 val;

	val = ((u64)pcifunc << 24) | (slot << 16) | (1ULL << 13);
	FUNC1(rvu, block->addr, block->lookup_reg, val);
	/* Wait for the lookup to finish */
	/* TODO: put some timeout here */
	while (FUNC0(rvu, block->addr, block->lookup_reg) & (1ULL << 13))
		;

	val = FUNC0(rvu, block->addr, block->lookup_reg);

	/* Check LF valid bit */
	if (!(val & (1ULL << 12)))
		return -1;

	return (val & 0xFFF);
}